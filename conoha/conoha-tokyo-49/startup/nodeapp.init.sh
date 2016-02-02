#!/usr/bin/sh
NODE_ENV=production pm2 start /root/mydir/nodeapp/FakerSSH/index.js --name 'FakerSSH'
NODE_ENV=production pm2 start /root/mydir/nodeapp/web-control.io/index.js --name 'web-control.io'
NODE_ENV=production pm2 start /root/mydir/nodeapp/ghost-it/index.js --name 'ghost-it'
NODE_ENV=production pm2 start /root/mydir/nodeapp/cmd-notify/index.js --name 'cmd-notify'
