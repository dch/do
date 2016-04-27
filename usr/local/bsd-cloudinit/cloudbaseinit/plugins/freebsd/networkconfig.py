# vim: tabstop=4 shiftwidth=4 softtabstop=4

# Copyright 2012 Cloudbase Solutions Srl
# Copyright 2012 Iblis Lin <iblis@hs.ntnu.edu.tw>
#
#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.

import subprocess

from oslo_config import cfg

from cloudbaseinit import exception
from cloudbaseinit.openstack.common import log as logging
from cloudbaseinit.osutils import factory as osutils_factory
from cloudbaseinit.plugins import base

LOG = logging.getLogger(__name__)

opts = [
    cfg.StrOpt('network_adapter', default=None, help='Network adapter to '
               'configure. If not specified, the first available ethernet '
               'adapter will be chosen'),
]

CONF = cfg.CONF
CONF.register_opts(opts)


class NetworkConfigPlugin(base.BasePlugin):
    def execute(self, service, shared_data):
        network_config = service.get_network_config()
        if not network_config:
            return (base.PLUGIN_EXECUTION_DONE, False)

        reboot_required = False
        for name,network in network_config['interfaces'].iteritems():
            for iface,interface in network.iteritems():
                rc = self.configure(interface, network_config['dns']['nameservers'].split('\n'))
                reboot_required = reboot_required or rc
        return (base.PLUGIN_EXECUTION_DONE, reboot_required)

    def configure(self, interface, dnsnameservers):
        address = interface['ipv4']['address']
        netmask = interface['ipv4']['netmask']
        if('broadcast' in interface['ipv4']):
            broadcast = interface['ipv4']['broadcast']
        else:
            broadcast = ''
        if interface['type'] == 'public':
            gateway = interface['ipv4']['gateway']
        else:
            gateway = False

        if('anchor_ipv4' in interface):
            self._configure_anchor_ip(interface, dnsnameservers)

        if('ipv6' in interface):
            self._configure_ipv6(interface, dnsnameservers)

        osutils = osutils_factory.get_os_utils()

        network_adapter_name = CONF.network_adapter
        if not network_adapter_name:
            network_adapter_name = subprocess.check_output(["/usr/local/bin/addrton", interface['mac']])

        LOG.info('Configuring network adapter: \'%s\'' % network_adapter_name)

        return osutils.set_static_network_config(
            network_adapter_name, "ipv4", address, netmask, broadcast,
            gateway, "", dnsnameservers)

    def _configure_ipv6(self, interface, dnsnameservers):
        address = interface['ipv6']['address']
        netmask = interface['ipv6']['cidr']
        broadcast = '' # IPv6 doesn't need broadcast
        if interface['type'] == 'public':
            gateway = interface['ipv6']['gateway']
        else:
            gateway = False

        osutils = osutils_factory.get_os_utils()

        network_adapter_name = subprocess.check_output(["/usr/local/bin/addrton", interface['mac']])
        return osutils.set_static_network_config(
            network_adapter_name, "ipv6", address, netmask, broadcast,
            gateway, "", dnsnameservers)

    def _configure_anchor_ip(self, interface, dnsnameservers):
        address = interface['anchor_ipv4']['address']
        netmask = interface['anchor_ipv4']['netmask']
        gateway = False
        broadcast = ''

        osutils = osutils_factory.get_os_utils()

        network_adapter_name = subprocess.check_output(["/usr/local/bin/addrton", interface['mac']])
        return osutils.set_static_network_config(
            network_adapter_name, "anchor_ipv4", address, netmask, broadcast,
            gateway, "", dnsnameservers)
