pythonBin=/usr/local/python/bin/python
ssserverBin=/usr/local/python/bin/ssserver
ssConfigFile=/etc/shadowsocks/config.json

while :
do
    pids=`ps aux|awk '/\/ssserver.+\/shadowsocks\/config\.json/{print $2}'`
    terminated=1
    for pid in $pids
    do
        terminated=0
    done
    if [ $terminated == 1 ]; then
        $pythonBin $ssserverBin -c $ssConfigFile -d start
        echo $pythonBin $ssserverBin -c $ssConfigFile -d start
    fi
done

#To stop, execute it:
# $ssserverBin -d stop
