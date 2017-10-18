<?php 
function microtime_float()
  {
      list($usec, $sec) = explode(" ", microtime());
      return ((float)$usec + (float)$sec);
  }
set_time_limit(10000);
echo $start = microtime_float();
echo "<hr>";
for( $i = 1; $i <= 1000; $i ++ ){
	$arr = [];
	for( $j = 1; $j <= $i; $j ++){
		$arr[]= $i;
	}
	echo implode(",", $arr);
	echo "<br>";
}
echo "<hr>";
$end = microtime_float() - $start;
printf("%0.3f seconds\r\n", $end);
?>