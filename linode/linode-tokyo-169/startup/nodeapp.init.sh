#!/usr/bin/sh
pm2 start /root/mydir/nodeapp/web-control.io/index.js --name 'web-control.io'
# NODE_ENV=production pm2 start /root/mydir/nodeapp/ghost-it/index.js --name 'ghost-it'

