var height = $(document.body).height();
var width = $(document.body).width();

var logoHeight = 200*width/1900;
document.getElementById("home").width = logoHeight;
document.getElementById("home").height = logoHeight;
$("#home").css("left",width/2 - document.getElementById("home").width/2);

$("#home").hover(function(){
  this.setAttribute('src','../media/Logo3.png');
  console.log("Fire");
  }, function(){
  this.setAttribute('src','../media/Logo.png');
});