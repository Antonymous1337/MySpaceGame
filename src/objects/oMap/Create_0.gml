/// @description ?

buff = 32; // distance from wall

var xsize = display_get_gui_width();
var ysize = display_get_gui_height();
var minSize = min(xsize, ysize);
guiSize = minSize/4;

x1 = xsize-buff-guiSize;
y1 = buff;
x2 = xsize-buff;
y2 = buff+guiSize;

on = true;