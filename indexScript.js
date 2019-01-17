console.log("Setting polygons");

var height = $("#theSVG").height();
var width = $("#theSVG").width();
document.getElementById("theSVG").setAttribute("width", width);
document.getElementById("theSVG").setAttribute("height", height);
console.log(height + "x" + width);

document.getElementById("polyUp").setAttribute("points", "0, 0 " + width/2 + " " + height/2 + ", " + width + " ,0");
document.getElementById("polyLeft").setAttribute("points", "0, 0 " + width/2 + " " + height/2 + ", 0 ," + height);
document.getElementById("polyRight").setAttribute("points", width + ", 0 " + width/2 + " " + height/2 + ", " + width + " ," + height);
document.getElementById("polyDown").setAttribute("points", "0, " + height + " , " + width/2 + " " + height/2 + ", " + width + " , " + height);

var a = document.getElementById("middle").height;
console.log(a);
$("#middle").css("top",height/2 - document.getElementById("middle").height/2);
$("#middle").css("left",width/2 - document.getElementById("middle").width/2);

var before;
$(".menuButton").hover(
    function(event) {
        // The mouse has entered the element, can reference the element via 'this'
        $(".menubutton").css("visibility","hidden");
        before = $(this).css("visibility","visible");
        before = $(this).css("clip-path");
        $(this).css("clip-path","none");
    },
    function (event) {
        // The mouse has left the element, can reference the element via 'this'
        $(".menubutton").css("visibility","visible");
        $(this).css("clip-path", before);
    }
 );