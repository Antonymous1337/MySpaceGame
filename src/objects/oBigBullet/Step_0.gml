/// @description Insert description here
// You can write your code in this editor

image_angle += rot;
MoveObject(id,lengthdir_x(sp,direction),lengthdir_y(sp,direction));

if (range <= 0) instance_destroy();
range -= sp;

if (range < maxRange/4) {
	var decrease = range/(maxRange/4);
	image_xscale = maxXScale*decrease;
	image_yscale = maxYScale*decrease;
}