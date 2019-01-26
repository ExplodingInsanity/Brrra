console.log("Setting polygons");
scale();

var hovered;
var before;
var happening = false;
$(".menuButton").hover(
    function(event) {
    	$(".info").css("visibility","visible");
    	if($(this)==hovered) return;
    	if(happening) return;
    	console.log("happened!")
    	hovered = this;
        // The mouse has entered the element, can reference the element via 'this'
        before = $(this).css("clip-path");

        $( ".menubutton" ).each(function( index ) {if(this != hovered) $(this).css("visibility","hidden");});
		happening = true;
		//$( ".menubutton" ).css("visibility","hidden");
		//$(this).css("animation" , "transition alternate 5s");

		$(this).css("-webkit-animation", "transition 10000000s");
	$(this).css("-webkit-animation-play-state", "running");
     setTimeout(function() { 
     	console.log("da");
     	$(this).css("clip-path","circle(100%)");
     	happening = false;
     }, 1000);

        //$(this).css("clip-path","none");
    },
    function (event) {
    	//if(happening == true) return;
    	
    }
 );

$("#middle").hover(
    function(event) {
    	// The mouse has entered the element, can reference the element via 'this'
    	$(hovered).css("-webkit-animation", "none");
    	$("#eastCoast").css("clip-path", "url(#clippingRight)");
    	$("#westSide").css("clip-path", "url(#clippingLeft)");
    	$("#trap").css("clip-path", "url(#clippingUp)");
    	$("#dj").css("clip-path", "url(#clippingDown)");
    	console.log("LOST HOVER");
        // The mouse has left the element, can reference the element via 'this'
        $( ".menubutton" ).css("visibility","visible");
		happening = false;
		$(".info").css("visibility","hidden");
    },
    function (event) {
    	// The mouse has left the element, can reference the element via 'this'

    }
 );

$("#dj").hover(
    function(event) {
    	// The mouse has entered the element, can reference the element via 'this'
    	$("#title").html("Rap Romanesc");
    },
    function (event) {// The mouse has left the element, can reference the element via 'this' 
	}
 );

$("#westSide").hover(
    function(event) {
    	// The mouse has entered the element, can reference the element via 'this'
    	$("#title").html("West Side");
    },
    function (event) {// The mouse has left the element, can reference the element via 'this' 
	}
 );

$("#eastCoast").hover(
    function(event) {
    	// The mouse has entered the element, can reference the element via 'this'
    	$("#title").html("East Coast");
    },
    function (event) {// The mouse has left the element, can reference the element via 'this' 
	}
 );

$("#trap").hover(
    function(event) {
    	// The mouse has entered the element, can reference the element via 'this'
    	$("#title").html("Rap Modern");
    },
    function (event) {// The mouse has left the element, can reference the element via 'this' 
	}
 );

$(window).on('resize', function(){
    scale();
});

function scale(){
height = window.innerHeight;
width = window.innerWidth;
$(".menuButton").width = width;
$(".menuButton").height = height;
document.getElementById("polyUp").setAttribute("points", "0, 0 " + width/2 + " " + height/2 + ", " + width + " ,0");
document.getElementById("polyLeft").setAttribute("points", "0, 0 " + width/2 + " " + height/2 + ", 0 ," + height);
document.getElementById("polyRight").setAttribute("points", width + ", 0 " + width/2 + " " + height/2 + ", " + width + " ," + height);
document.getElementById("polyDown").setAttribute("points", "0, " + height + " , " + width/2 + " " + height/2 + ", " + width + " , " + height);
$("#middle").css("width",10/100*(height+width)/2);
$("#middle").css("height",10/100*(height+width)/2);
$("#middle").css("top",height/2 - document.getElementById("middle").height/2);
$("#middle").css("left",width/2 - document.getElementById("middle").width/2);
$("#title").css("font-size",+(width+height)/24+"px");
}