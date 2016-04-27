# Copyright 2014 Cloudbase Solutions Srl
# Copyright 2012 Mirantis Inc.
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

import posixpath

from oslo_config import cfg
from six.moves.urllib import error
from six.moves.urllib import request

from cloudbaseinit.metadata.services import base
from cloudbaseinit.openstack.common import log as logging
from cloudbaseinit.utils import network

opts = [
    cfg.StrOpt('do_metadata_base_url',
               default='http://169.254.169.254/',
               help='The base URL where the service looks for metadata'),
]

CONF = cfg.CONF
CONF.register_opts(opts)

LOG = logging.getLogger(__name__)


class DigitalOceanService(base.BaseMetadataService):
    _metadata_version = 'metadata/v1'

    def __init__(self):
        super(DigitalOceanService, self).__init__()
        self._enable_retry = True

    def load(self):
        super(DigitalOceanService, self).load()

        try:
            self.get_host_name()
            return True
        except Exception as ex:
            LOG.exception(ex)
            LOG.debug('Metadata not found at URL \'%s\'' %
                      CONF.do_metadata_base_url)
            return False

    def _get_response(self, req):
        try:
            return request.urlopen(req)
        except error.HTTPError as ex:
            if ex.code == 404:
                raise base.NotExistingMetadataException()
            else:
                raise

    def _get_data(self, path):
        norm_path = posixpath.join(CONF.do_metadata_base_url, path)

        LOG.debug('Getting metadata from: %(norm_path)s',
                  {'norm_path': norm_path})
        req = request.Request(norm_path)
        response = self._get_response(req)
        return response.read()

    def get_host_name(self):
        return self._get_cache_data('%s/hostname' %
                                    self._metadata_version)

    def get_instance_id(self):
        return self._get_cache_data('%s/id' %
                                    self._metadata_version)

    def get_public_keys(self):
        ssh_keys = []

        ssh_keys = self._get_cache_data(
            '%s/public-keys' %
            self._metadata_version).splitlines()

        return ssh_keys

    def get_network_config(self):
	network_config = self._walk_for_object('%s/' % self._metadata_version)
	return { 'dns': network_config['dns'], 'interfaces': network_config['interfaces'] }

    def _walk_for_object(self, path):
	obj = {}
	items = self._get_cache_data(path).split('\n')
	for i in items:
		if i.endswith('/'):
			obj[i.rstrip('/')] = self._walk_for_object('%s%s' % (path, i))
		elif i == '':
			continue
		else:
			obj[i] = self._get_cache_data('%s%s' % (path, i))
	return obj
