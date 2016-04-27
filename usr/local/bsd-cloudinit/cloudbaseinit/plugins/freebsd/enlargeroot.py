from cloudbaseinit.osutils import factory as osutils_factory
from cloudbaseinit.plugins import base
from cloudbaseinit.openstack.common import log as logging

import subprocess

LOG = logging.getLogger(__name__)

class EnlargeRoot(base.BasePlugin):
    def _call_shell(self, cmd):
        return subprocess.check_call(cmd, stderr=subprocess.STDOUT, shell=True)

    def execute(self, service, shared_data):
        rootdisk = 'vtbd0'
        self._call_shell('gpart recover ' + rootdisk)
        self._call_shell('sysctl kern.geom.debugflags=16')
        self._call_shell('gpart resize -i 3 ' + rootdisk)

        try:
            subprocess.check_output('growfs -y /dev/gpt/rootfs', stderr=subprocess.STDOUT, shell=True)
        except subprocess.CalledProcessError as e:
            if 'is not larger than the current filesystem size' in e.output:
                LOG.info("Filesystem already at proper size")
            else:
                raise

        return (base.PLUGIN_EXECUTION_DONE, False)
