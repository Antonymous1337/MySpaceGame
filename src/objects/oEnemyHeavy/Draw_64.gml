/// @description ?

with (oMap) {
	if (on) {
		draw_set_color(c_red);
		var si = 3;
		draw_rectangle(x1 + ((guiSize/room_width)*other.x)-si,
			y1 + ((guiSize/room_width)*other.y)-si,
			x1 + ((guiSize/room_width)*other.x)+si,
			y1 + ((guiSize/room_width)*other.y)+si, false);
	}
}