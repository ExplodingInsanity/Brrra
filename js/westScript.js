$("#home").hover(function(){
  this.setAttribute('src','../media/controls/logo3.png');
  console.log("Fire");
  }, function(){
  this.setAttribute('src','../media/controls/logo2.png');
});