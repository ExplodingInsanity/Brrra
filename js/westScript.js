$("#home").hover(function(){
  this.setAttribute('src','../media/logo3.png');
  console.log("Fire");
  }, function(){
  this.setAttribute('src','../media/logo2.png');
});