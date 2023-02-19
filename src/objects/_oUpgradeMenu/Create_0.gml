/// @description Insert description here
// You can write your code in this editor

// playercontrol and menucontrol booleans, menucontrol is true if player can press e again to open/close, and to select items in shop if open

w = display_get_gui_width();
h = display_get_gui_height();

x_cur = w;
x_to = w;
buffFromWall = 64;
buffFromSecondWall = buffFromWall*2;
xSpeed = 6;