	<?php 
	$server   = "localhost";
	$user 	  = "root";
	$pass 	  = "";
	$database = "atestat";
	$charset  = "UTF8"; //utf8mb4 //ISO-8859-16
	$connection = mysqli_connect($server,$user,$pass,$database);
	mysqli_set_charset($connection, $charset);

	function censor(&$titlu){
			$titlu = str_replace("muie","m**e",$titlu);
			$titlu = str_replace("pulă","p**ă",$titlu);
			$titlu = str_replace("pula","p**a",$titlu);
			$titlu = str_replace("pizd","p***",$titlu);
			$titlu = str_replace("fut","f*t",$titlu);
			$titlu = str_replace("nigg","n**g",$titlu);
			$titlu = str_replace("fuck","f**k",$titlu);
			$titlu = str_replace("bitch","b***h",$titlu);
			$titlu = str_replace("shit","s**t",$titlu);
			$titlu = str_replace("Muie","M**e",$titlu);
			$titlu = str_replace("Pulă","P**ă",$titlu);
			$titlu = str_replace("Pula","P**a",$titlu);
			$titlu = str_replace("Pizd","P***",$titlu);
			$titlu = str_replace("Fut","F*t",$titlu);
			$titlu = str_replace("Nigg","N**g",$titlu);
			$titlu = str_replace("Fuck","F**k",$titlu);
			$titlu = str_replace("Bitch","B***h",$titlu);
			$titlu = str_replace("Shit","S**t",$titlu);
	}
	//if(!$connection) { die("Unable to connect to the db");}
	?>
