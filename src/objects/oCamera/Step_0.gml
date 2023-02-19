/// @description ?

if (instance_exists(oPlayer)) {
	x = xTo - (oPlayer.hSpeed*4);
	y = yTo - (oPlayer.vSpeed*4);
	counterx -= (oPlayer.hSpeed)%120; // factorial of all of the layer_x below : 2*3*4*5=120
	countery -= (oPlayer.vSpeed)%120;
}
//x += (xTo - x) / 10;
//y += (yTo - y) / 10;

x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-(shake_magnitude/shake_duration));

camera_set_view_pos(cam, x-halfCamWidth, y-halfCamHeight);


// PARALLAX, might need to update to support looping mechanic
layer_x(s1,counterx/2);
layer_y(s1,countery/2);

layer_x(s2,counterx/3);
layer_y(s2,countery/3);

layer_x(s3,counterx/4);
layer_y(s3,countery/4);

layer_x(s4,counterx/5);
layer_y(s4,countery/5);