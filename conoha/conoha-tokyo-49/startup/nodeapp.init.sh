#!/usr/bin/sh
pm2 start /root/mydir/nodeapp/FakerSSH/index.js --name 'FakerSSH'
pm2 start /root/mydir/nodeapp/web-control.io/io.js --name 'web-control.io'
NODE_ENV=production pm2 start /root/mydir/nodeapp/ghost-it/index.js --name 'ghost-it'
pm2 start /root/mydir/nodeapp/cmd-notify/index.js --name 'cmd-notify'
