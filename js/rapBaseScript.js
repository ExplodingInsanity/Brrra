var height = $(document.body).height();
var width = $(document.body).width();

//var logoHeight = 200*width/1900;
var logoHeight = 106/1000*width;
document.getElementById("home").width = logoHeight;
document.getElementById("home").height = logoHeight;
$("#home").css("left",width/2 - document.getElementById("home").width/2);

$("#home").hover(function(){
  this.setAttribute('src','../media/controls/logo3.png');
  console.log("Fire");
  }, function(){
  this.setAttribute('src','../media/controls/logo2.png');
});

$(window).on('resize', function(){
	console.log("da");
	width = $(document.body).width();
	logoHeight = 106/1000*width;
	console.log(logoHeight);
document.getElementById("home").width = logoHeight;
document.getElementById("home").height = logoHeight;
$("#home").css("left",width/2 - document.getElementById("home").width/2);
});

var $playingElement="";
$(".playButton").on('click', function(){
	console.log($playingElement);
	var state = this.getAttribute('data-state');
	if(state == 'stopped')
	{
		if($playingElement!=""){
		document.getElementById($playingElement).setAttribute('data-state','stopped');
		document.getElementById($playingElement).src="../media/controls/play.png";
		}
		this.setAttribute('data-state','playing');
		this.src="../media/controls/pause.png";
		console.log("setting id: " + this.id);
		$playingElement = this.id;
		document.getElementById("audioSrc").src =this.getAttribute('data-path');
		 console.log("setting path: " +this.getAttribute('data-path'));
		document.getElementById("audio").load();
		document.getElementById("audio").play();

	}
	else if(state == 'paused') 
		{
			this.setAttribute('data-state','playing');
			this.src="../media/controls/pause.png";
			document.getElementById("audio").play();
			
		}
	else if(state == 'playing'){
		this.setAttribute('data-state','paused');
		this.src="../media/controls/play.png";
		document.getElementById("audio").pause();
	}
});

$("#audio").on("pause",function(){
	console.log("paused (" + $playingElement +")");
	console.log(document.getElementById($playingElement));
	document.getElementById($playingElement).src="../media/controls/play.png";
});
$("#audio").on("play",function(){
		console.log("resumed (" + $playingElement +")");
	console.log(document.getElementById($playingElement));
	document.getElementById($playingElement).src="../media/controls/pause.png";
});
