chmod -R 777 .
startupPath="/root/mydir/mysetup/vps-my-setup/conoha/conoha-tokyo-49/startup"
if [ ! -d $startupPath/tmp ]; then
    mkdir $startupPath/tmp
fi
nohup $startupPath/nodeapp.init.sh >$startupPath/tmp/nohup.nodeapp.out &
nohup $startupPath/ss.daemon.sh >$startupPath/tmp/nohup.ss.daemon.out &
