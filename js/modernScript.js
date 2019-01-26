var height = $(document.body).height();
var width = $(document.body).width();

//var logoHeight = 200*width/1900;
var logoHeight = 106/1000*width;
document.getElementById("home").width = logoHeight;
document.getElementById("home").height = logoHeight;
$("#home").css("left",width/2 - document.getElementById("home").width/2);


$("#home").hover(function(){
  this.setAttribute('src','../media/logo3.png');
  console.log("Fire");
  }, function(){
  this.setAttribute('src','../media/logo.png');
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