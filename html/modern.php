<html>
<head>
	 <meta charset="UTF8"> 
	 <title>Rap Nodern</title>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	 <link rel = "stylesheet" type = "text/css" href = "../css/rapCss.css"/>
</head>
<body bgcolor=#ffffff>
	<div>
		<img id="banner" src="../media/controls/banner-trap.png" width="100%">
		<center>
			<a href="../index.php">
			<img id="home" src="../media/controls/logo.png" width="100" style="position:absolute;top:0px">
		</a>
		</center>
	</div>
	<div>
	<?php
	include('dbconnection.php');
	$count = 0;
	//Query artists
	$sql = "SELECT * from rapperi_modern order by nume asc";
	$result = mysqli_query($connection,$sql);
	while($artist = mysqli_fetch_assoc($result)) {
		echo '
		<div style="float:right; padding-left: 100; padding-right: 25">
		<img src="../media/artists/'. trim($artist['poza']). '" width="400"';
?>
<br>
<table style="width: 100%; border: 1px solid black;">
	<tr>
		<td style="width: 50%;"><b>Nume</b></td>
		<td><?php echo $artist['nume']?></td>
	</tr>
	<?php
	if($artist['nume_real']!="")
	echo '
	<tr>
		<td style="width: 50%;"><b>Nume Real</b></td>
		<td>'. $artist['nume_real'] .'</td>
	</tr>';
		if($artist['membri']!=""){
	echo '
	<tr>
		<td style="width: 50%;"><b>Membri</b></td>
		<td>';
			$membru = strtok($artist['membri'],";");
			while($membru !== false){
				echo $membru ." <br>";
				$membru = strtok(";");
			}
			echo '
		</td>';
		}
	if($artist['data_nasterii'] != "0000-00-00")
		echo '
	<tr>
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
	<?php 
		if(strstr($artist['social_media'],"www")!='') $link = ucfirst(strstr(substr(strstr($artist['social_media'],"."),1),".",true));
		else if (strstr($artist['social_media'],"//")!='') $link = ucfirst(strstr(substr(strstr($artist['social_media'],"//"),2),".",true));
		else $link = ucfirst(strstr($artist['social_media'],'.',true));
	?>
		<td><a href=<?php echo "\"" . $artist['social_media'] . "\">" . $link ?></a></td>
	</tr>
</table>
		
<?php
		echo '
		</div>
		<h1 style=\'font-family: "Roboto-Black"; font-size: 40px;\'>' .$artist['nume'].'</h1>
		<p style=\'font-family: "Helvetica"; font-size: 20px;\'>'. $artist['descriere'] .'</p>
		<h1>Albume</h1>';
		//Query albums
		$sqlAlbum = 'SELECT * from albume_modern WHERE artist_id ='. $artist['id'] . ' order by an desc, nume asc';
		$resultAlbum = mysqli_query($connection,$sqlAlbum);
		while($album = mysqli_fetch_assoc($resultAlbum)){
			echo '<div style="min-height:200px;">
			<img src="../media/covers/'. trim($album['cover']). '" height="200" style="float:left; padding-right: 100; padding-right: 25">
			<p style=\'font-family: "Roboto-Black"; font-size: 20px; color:rgb(214, 47, 44);\'>' .$album['nume'] . ' (' . $album['an'] .')' .'</p>';
			//Query songs
			$sqlMelodie = 'SELECT * from melodii_modern WHERE album_id ='. $album['id'];
			$resultMelodie = mysqli_query($connection,$sqlMelodie);
			echo '<ol><b>';
			while($melodie = mysqli_fetch_assoc($resultMelodie)){
				censor($melodie['titlu']);
				echo '<li>'. $melodie['titlu'];
				if($melodie['filename']!=''){
					echo '<img  src = "../media/controls/play.png" width="20" style="padding-left:10px;" id="play'.strval(++$count).'" class="playButton" data-state="stopped" data-path="../audio/' . $melodie ['filename']. '">';
				}
			echo '</li>';
		}
			echo '</ol></b></div>';
		}
		echo '<hr>';
	}
	mysqli_close($connection);
	?>
	<br>
	</div>
	<audio id="audio" controls style="position:fixed;bottom:0px; width: 100%; background: white;">
		<source id="audioSrc" src="" type="audio/mpeg">
	</audio>
	<script src="../js/rapBaseScript.js"></script>
	<script src="../js/modernScript.js"></script>
</body>