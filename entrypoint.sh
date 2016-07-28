#!/bin/bash
sh /www/wdlinux/init.d/httpd start
sh /www/wdlinux/init.d/memcached start
sh /www/wdlinux/init.d/mysqld start
sh /www/wdlinux/init.d/nginxd start
sh /www/wdlinux/init.d/pureftpd start
sh /www/wdlinux/wdcp/wdcp.sh start
tail -f /dev/null
