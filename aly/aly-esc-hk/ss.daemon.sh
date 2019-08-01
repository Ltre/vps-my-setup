while :
do
    ss_pids=`ps aux|awk '/[0-9] \/usr\/local\/python\/bin\/ssserver/{print $2}'`
    ss_terminated=1
    for teetpid in $ss_pids
    do
        ss_terminated=0
    done
    # 此处不用 ${#ss_pids[@]} == 0 判断。因永不为0，是个坑
    if [ $ss_terminated == 1 ]; then
        echo `date --date=now '+%Y-%m-%d %H:%M:%S %Z'`
        echo 'wake ss..'
        /bin/systemctl start shadowsocks.service
    fi
    sleep 5s
done

