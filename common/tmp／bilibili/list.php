<?php
for($i=1;$i<=44;$i++){
	file_put_contents("list-b.txt", "file 'B{$i}.flv'\n", FILE_APPEND);
}
