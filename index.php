<html>
<head>
	<meta charset="UTF-8"> 
	<title>Brrra!</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel = "stylesheet" type = "text/css" href = "./css/indexCss.css" />
</head>
<body>

	<a href="./html/east.php">
		<img src="./media/east-coast2.jpg" width="100%" height="100%" id="eastCoast" class="menuButton">
	</a>
	<a href="./html/west.php">
		<img src="./media/west-side2.jpg" width="100%" height="100%" id="westSide" class="menuButton">
	</a>
	<a href="./html/modern.php">
		<img src="./media/trap2.jpg" width="100%" height="100%" id="trap" class="menuButton">
	</a>
	<a href="./html/ro.php">
		<img src="./media/ro_bg.png" width="100%" height="100%" id="dj" class="menuButton">
	</a>
		<img src="./media/controls/logo.png" id="middle" width="150" height="150">

	<p id="title" class="info">Muzica Trap</p>

	<svg height="100%" width="100%" id="theSVG">
		<clipPath id="clippingUp">
			<polygon id="polyUp" points="0,0 50,100 100, 0" style="fill:cyan;stroke:purple;stroke-width:1" />
		</clipPath>
		<clipPath id="clippingRight">
			<polygon id="polyRight" points="0,0 50,100 100, 0" style="fill:red;stroke:purple;stroke-width:1" />
		</clipPath>
		<clipPath id="clippingDown">
			<polygon id="polyDown" points="0,0 50,100 100, 0" style="fill:lime;stroke:purple;stroke-width:1" />
		</clipPath>
		<clipPath id="clippingLeft">
			<polygon id="polyLeft" points="0,0 50,100 100, 0" style="fill:white;stroke:purple;stroke-width:1" />
		</clipPath>
	</svg>
	<script src="./js/indexScript.js"></script>
</body>
</html>
