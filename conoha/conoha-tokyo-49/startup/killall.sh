# clear nodejs pm2 programs
pm2 kill

# clear shadowsocks daemon
pids=`ps aux|awk '/ss\.daemon\.sh/{print $2}'`
for pid in $pids
do
    kill -9 $pid
    echo "killed ss.daemon, pid = $pid"
done

# stop shadowsocks in regular 
/usr/local/python/bin/ssserver -d stop

# if exists one shadowsocks process after [ssserver -d top], then force clear their
pids=`ps aux|awk '/\/ssserver.+\/shadowsocks\/config\.json/{print $2}'`
for pid in $pids
do
    kill -9 $pid
    echo "force killed ss program, pid = $pid"
done
