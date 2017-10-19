<?php 
function test($maxNumber = 5){
	for ($i = 1; $i <= 5; $i ++) {
		$tmpStr = "";
		for ($j = 1; $j <= $i; $j ++) {
			$tmpStr .= $i . ",";			
		}
		echo rtrim($tmpStr. ",")."<br>";
	}
}
//run the test function
test();
?>