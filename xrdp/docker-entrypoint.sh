#!/bin/bash -e

set -- /usr/bin/supervisord -c /etc/supervisor/xrdp.conf

exec "$@"