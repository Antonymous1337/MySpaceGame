/// @description ?
draw_self();

var si = sprite_width/1.5; // lower the bigger
draw_sprite_stretched(sBoxRed,0,x-(si/2),y-si-10,si*2,5);

var remain = hp/maxHp; // percentage value
draw_sprite_stretched(sBoxGreen,0,x-(si/2),y-si-10,si*2*remain,5);

//draw_set_color(c_red);
//draw_circle(xTo, yTo, 10, false)