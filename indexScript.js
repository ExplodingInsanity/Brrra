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