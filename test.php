<?php 
  function microtime_float()
  {
      list($usec, $sec) = explode(" ", microtime());
      return ((float)$usec + (float)$sec);
  }
set_time_limit(10000);
echo $start = microtime_float();
echo "<hr>";
$string = "123,";
for( $i = 1; $i <= 10000; $i ++ ){
	substr($string, 0, -1);	
}
echo "<hr>";
$end = microtime_float() - $start;
printf("%0.3f seconds\r\n", $end);
?>