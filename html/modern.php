<html>
<head>
	 <meta charset="UTF8"> 
	 <title>Rap Nodern</title>
	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 <link rel = "stylesheet" type = "text/css" href = "../css/modernCss.css"/>
</head>
<body bgcolor=#ffffff>
	<div>
		<img id="banner" src="../media/banner-trap.png" width="100%">
		<center>
			<a href="../index.php">
			<img id="home" src="../media/logo.png" width="100" style="position:absolute;top:0px">
		</a>
		</center>
	</div>
	<div>
		<!--
		<img src="../media/DenzelC_TA13OO_CoverAr_3000DPI300RGB1000259685_b6dedb6d-5b7d-41fe-8eee-68c2a579dfbc.jpg" width="200" style="float:right; padding-left: 100; padding-right: 25">
		<h1 style='font-family: "Roboto-Black"; font-size: 40px;'>Denzel Curry</h1>
		<p style='font-family: "Helvetica"; font-size: 20px;'>Denzel Rae Don Curry (born February 16, 1995)[1] is an American rapper.[2] Raised in Carol City, Florida, Curry started rapping while in sixth grade and began working on his first mixtape in 2011, when he was attending school. Influenced by underground Florida rapper SpaceGhostPurrp, the mixtape was later featured on Purrp's social media, giving Curry local attention and resulting in Curry joining Purrp's hip-hop collective, Raider Klan.

Curry left Raider Klan in 2013, releasing his debut full-length album a year later while still in high school, titled Nostalgic 64 on September 3, 2013. He has gone on to release two more projects, Imperial on March 9, 2016, and Ta13oo on July 27, 2018, which debuted at number 28 on the Billboard 200 chart. </p>
 		-->
	<?php
	include('dbconnection.php');

	if(!$connection) { die("Unable to connect to the db");}

	//Query artists
	$sql = "SELECT * from rapperi_modern order by nume asc";
	$result = mysqli_query($connection,$sql);
	while($artist = mysqli_fetch_assoc($result)) {
		// foreach($artist as $current) {
		// 	echo $current . '<br>';
		// }
		echo '<div style="float:right; padding-left: 100; padding-right: 25">';
		echo '<img src="../media/'. trim($artist['poza']). '" width="400"';
?>
<br>
<table style="width: 100%; border: 1px solid black;">
	<tr>
		<td style="width: 50%;"><b>Nume</b></td>
		<td><?php echo $artist['nume']?></td>
	</tr>
		<?php
	if($artist['nume_real']!="")
	echo '<tr>
		<td style="width: 50%;"><b>Nume Real</b></td>
	<td>'. $artist['nume_real'] .'</td>
	</tr>';
		if($artist['membri']!=""){
			echo '<tr>
			<td style="width: 50%;"><b>Membri</b></td>
			<td>';
			$da = strtok($artist['membri'],";");
			while($da !== false){
				echo $da ." <br>";
			$da = strtok(";");
			}
			echo '</td>';
		}
	if($artist['data_nasterii'] != "0000-00-00")
		echo '<tr>
		<td style="width: 50%;"><b>Data Nasterii</b></td>
	<td>'. $artist['data_nasterii'] .'</td>
	</tr>'
		?>
		<tr>
		<td style="width: 50%;"><b>Nationalitate</b></td>
	<td><?php echo $artist['nationalitate']?></td>
	</tr>
		<tr>
		<td style="width: 50%;"><b>Social Media</b></td>
	<td><a href=<?php echo "\"" . $artist['social_media'] . "\">" . ucfirst(strstr(substr(strstr($artist['social_media'],"//"),2),".",true)) ?></a></td>
	</tr>
</table>
		
<?php
		echo '</div>';
		echo '<h1 style=\'font-family: "Roboto-Black"; font-size: 40px;\'>' .$artist['nume'].'</h1>';
		echo '<p style=\'font-family: "Helvetica"; font-size: 20px;\'>'. $artist['descriere'] .'</p>';
		echo '<h1>Albume</h1>';
		//Query albums
		$sqlAlbum = 'SELECT * from albume_modern WHERE artist_id ='. $artist['id'] . ' order by an desc, nume asc';
		$resultAlbum = mysqli_query($connection,$sqlAlbum);
		while($album = mysqli_fetch_assoc($resultAlbum)){
			echo '<div style="min-height:200px;">';
			echo '<img src="../media/'. trim($album['cover']). '" height="200" style="float:left; padding-right: 100; padding-right: 25">';
			echo '<p style=\'font-family: "Roboto-Black"; font-size: 20px; color:rgb(214, 47, 44);\'>' .$album['nume'] . ' (' . $album['an'] .')' .'</p>';
			//Query songs
			$sqlMelodie = 'SELECT * from melodii_modern WHERE album_id ='. $album['id'];
			$resultMelodie = mysqli_query($connection,$sqlMelodie);
			echo '<ol><b>';
			while($melodie = mysqli_fetch_assoc($resultMelodie)){
			censor($melodie['titlu']);
			echo '<li>' . $melodie['titlu'] . '</li>';
			}
			echo '</ol></b></div>';
		}
		echo '<hr>';
	}
	mysqli_close($connection);
	?>
	</div>
	<script src="../js/modernScript.js"></script>
</body>