/// @description ?

if (keyboard_check_pressed(ord("M"))) {
	if (on) on = false;
	else on = true;
}

if (on) {
	draw_set_color(c_black);
	draw_rectangle(x1,y1,x2,y2,false);
}