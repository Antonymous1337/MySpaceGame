/// @description Insert description here
// You can write your code in this editor

if (iFrame <= 0) {
	hp -= other.damage*(other.image_xscale/other.maxXScale);
	if (hp <= 0) instance_destroy();
	iFrame = maxiFrame;
}

var angle = point_direction(other.x,other.y,x,y);
hSpeed = lengthdir_x(5,angle);
vSpeed = lengthdir_y(5,angle);