<?php
try{
	mail('makishima.yudai@hamee.co.jp', 'アクセスがありました', 'アクセスがありました');
}catch(Exception $e){
	var_dump($e);
}