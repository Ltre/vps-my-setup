i=1
while(( $i<=14 )) 
do 
    ffmpeg -i $i.flv -c copy $i.mp4
    let i++
done

