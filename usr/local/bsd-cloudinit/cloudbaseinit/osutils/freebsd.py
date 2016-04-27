from cloudbaseinit.osutils import base

from subprocess import CalledProcessError
from cloudbaseinit.metadata import factory as metadata_factory
import subprocess
import datetime
import os.path
import glob

class FreeBSDUtils(base.BaseOSUtils):
    def __init__(self):
        super(FreeBSDUtils, self).__init__()
        self.ipv6_enabled = False

    def reboot(self):
        if ( os.system('reboot') != 0 ):
            raise Exception('Reboot failed')

    def user_exists(self, username):
        try:
            subprocess.check_output(["id", username])
        except CalledProcessError:
            return False
        return True

    def create_user(self, username, password, invite_group=None, password_expires=False):
        """
        param invite_group: it must be a list of string.
        """
        home_dir = '/home/' + username
        user_shell = '/bin/tcsh'
        user_comment = 'Created by bsdcloud-init'
        grouplist = ''

        assert not invite_group or isinstance(invite_group, list), "param invite_group must be a list."
        assert invite_group, "invite_group cannot be empty."
        for i in invite_group:
            grouplist += i+','
        grouplist = grouplist[:-1]

        pw_cmd = "echo " + password + " | pw useradd -m -n " + username + " -c '" + user_comment + "' -d '" + home_dir + "' -s /bin/tcsh -h 0 -G " + grouplist
        subprocess.check_call(pw_cmd, shell=True)
        subprocess.check_call("mkdir -p %s" % (home_dir), shell=True)
        subprocess.check_call("chown -R %s:%s %s" % (username, username, home_dir), shell=True)

    def set_host_name(self, new_host_name):
        self._add_rc_conf({'hostname': new_host_name})

    def sanitize_shell_input(self, value):
        pass

    def set_user_password(self, username, password):
        pw_cmd = "echo " + password + " | pw usermod -n " + username + " -h 0"
        subprocess.check_call(pw_cmd, shell=True)

    def add_user_to_local_group(self, username, groupname):
        pw_cmd = 'pw usermod ' + username + ' -G ' + groupname
        subprocess.check_call(pw_cmd, shell=True)

    def get_user_home(self, username):
        home_dir = subprocess.check_output('printf ~' + username, shell=True)
        return home_dir

    def get_network_adapters(self):
        """
        This fucntion will return a list of interface.
        """
        if_list = subprocess.check_output(['ifconfig', '-l']).split(' ')
        # Filter out non-network interfaces
        if_list = filter(lambda x: not x.startswith(('pflog', 'lo', 'plip')), if_list)
        return if_list

    def set_static_network_config(self, adapter_name, inet, address, netmask,
                                  broadcast, gateway, dnsdomain,
                                  dnsnameservers):
        """
        param dnsnameservers: must be a list, it can contain 3 elements at most.
        """
        if_list = self.get_network_adapters()
        assert adapter_name in if_list, 'Network interface: ' + adapter_name + ' not found in ' + ' '.join(if_list)
        assert isinstance(dnsnameservers, list), 'dnsnameservers must be a list.'
        
        resolv_conf = []
        if(dnsdomain is not None and dnsdomain != ""):
            resolv_conf.append('domain ' + dnsdomain)
        resolv_conf_file = open('/etc/resolv.conf', 'w')
        for i in dnsnameservers:
            resolv_conf.append('nameserver ' + i)
        
        self._add_comment(resolv_conf_file);
        for line in resolv_conf:
            resolv_conf_file.write(line + '\n')
        if(inet == 'ipv4'):
            rc_conf_entry =  'inet ' + address + ' netmask ' + netmask
            if broadcast:
                rc_conf_entry += ' broadcast ' + broadcast
            self._add_rc_conf({'ifconfig_' + adapter_name:  rc_conf_entry})
            if gateway:
                self._add_rc_conf({'defaultrouter': gateway})
        elif(inet == 'ipv6'):
            self._enable_ipv6_once()
            rc_conf_entry =  'inet6 ' + address + ' prefixlen ' + netmask
            self._add_rc_conf({'ifconfig_%s_ipv6' % adapter_name:  rc_conf_entry})
            if gateway:
                self._add_rc_conf({'ipv6_defaultrouter': gateway})
        elif(inet == 'anchor_ipv4'):
            rc_conf_entry =  'inet ' + address + ' netmask ' + netmask
            self._add_rc_conf({'ifconfig_%s_alias0' % adapter_name:  rc_conf_entry})
        
        resolv_conf_file.close()

        # should return reboot_required, which is always false.
        return False

    def set_dhcp_network_config(self, adapter_name):
        if_list = self.get_network_adapters()
        assert adapter_name in if_list, 'Network interface: ' + adapter_name + ' not found.'
        
        _add_rc_conf({'ifconfig_' + adapter_name: 'DHCP'})
        subprocess.check_call(['dhclient', adapter_name])

    def set_config_value(self, name, value, section=None):
        pass

    def get_config_value(self, name, section=None):
        pass

    def wait_for_boot_completion(self):
        pass

    def terminate(self):
        pass

    def get_default_gateway(self):
        """
            We cannot handle mutiple default gateway.
        """
        interface = subprocess.check_output("route get default | grep interface", shell=True).split()[1]
        gateway_ip = subprocess.check_output("route get default | grep gateway", shell=True).split()[1]
        return (interface, gateway_ip)

    def check_static_route_exists(self, destination):
        pass

    def add_static_route(self, destination, mask, next_hop, interface_index,
                         metric):
        pass

    def get_os_version(self):
        pass

    def get_volume_label(self, drive):
        pass

    def set_timezone(self, timezone, zoneinfo_dir='/usr/share/zoneinfo'):
        """
        param timezone: The zoneinfo_file path under /usr/share/zoneinfo.
                        e.g: Asia/Taipei
                        Note that this parameter is case-sensitive,
                        because it's the real path under filesystem.
        """
        path = zoneinfo_dir + '/' + timezone
        assert os.path.isfile(path), 'Time zone file not found: ' + path

        subprocess.check_call(['cp', path, '/etc/localtime'])
        subprocess.check_call(['adjkerntz', '-a'])

    def adj_sys_time(self, ntp_server):
        """
        This function will using 'ntpdate' to sync the clock.
        param ntp_server: string of server.
        """
        subprocess.check_call(['ntpdate', '-b', ntp_server])

    def remove_host_keys(self):
        for host_key in glob.glob('/etc/ssh/ssh_host_*'):
            subprocess.check_call(['rm', host_key])

    def _get_config_file(self):
        service = metadata_factory.get_metadata_service()
        droplet_id = service.get_instance_id()
        return '/etc/rc.digitalocean.d/' + droplet_id + '.conf'

    def _add_comment(self, file_obj):
        file_obj.write('# Generated by bsdcloud-init ' + datetime.datetime.now().strftime("%Y-%m-%d %H:%M") + '\n')

    def _add_rc_conf(self, options):
        """ For appending new options to config file
        param options: an dictionary that contain {'option name': 'value'}
            e.g. {'hostname': 'example',
                   'sshd_enable': 'YES'}
        """
        assert isinstance(options, dict), 'param options must be a dictionary.'
        rc_conf_file = open(self._get_config_file(), 'a')

        self._add_comment(rc_conf_file)
        for key in options:
            rc_conf_file.write(key + '="' + options[key] + '"\n')

        rc_conf_file.close()

    def _enable_ipv6_once(self):
        if self.ipv6_enabled:
            return

        self._add_rc_conf({'ipv6_activate_all_interfaces': 'yes'})
        self.ipv6_enabled = True
