pids=`ps aux|awk '/Bililive/{print $2}'`
for pid in $pids
do
    sudo kill -9 $pid
    echo "killed the Bililive, pid = $pid"
done
