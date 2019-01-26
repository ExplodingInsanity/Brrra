<html>
<head>
	 <meta charset="UTF8"> 
	 <title>West Coast Rap</title>
	 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 <link rel = "stylesheet" type = "text/css" href = "../css/westCss.css"/>
</head>
<body bgcolor=#ffffff>
	<div>
		<img id="banner" src="../media/banner-west.png" width="100%">
		<center>
			<a href="../index.php">
			<img id="home" src="../media/logo2.png" width="100" style="position:absolute;top:0px">
		</a>
		</center>
	</div>
	<div>
	<?php
	include('dbconnection.php');

	if(!$connection) { die("Unable to connect to the db");}

	//Query artists
	$sql = "SELECT * from rapperi_west order by nume asc";
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
		$sqlAlbum = 'SELECT * from albume_west WHERE artist_id ='. $artist['id'] . ' order by an desc, nume asc';
		$resultAlbum = mysqli_query($connection,$sqlAlbum);
		while($album = mysqli_fetch_assoc($resultAlbum)){
			echo '<div style="min-height:200px;">';
			echo '<img src="../media/'. trim($album['cover']). '" height="200" style="float:left; padding-right: 100; padding-right: 25">';
			echo '<p style=\'font-family: "Roboto-Black"; font-size: 20px; color:rgb(214, 47, 44);\'>' .$album['nume'] . ' (' . $album['an'] .')' .'</p>';
			//Query songs
			$sqlMelodie = 'SELECT * from melodii_west WHERE album_id ='. $album['id'];
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
	<script src="../js/westScript.js"></script>
</body>