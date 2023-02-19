/// @description Insert description here
// You can write your code in this editor

if (forceshoot) {
	
	with (instance_create_layer(x-lengthdir_x(50,image_angle),y-lengthdir_y(50,image_angle),"Bullets",oBigBullet)) { // maybe put in boss layer as special exception
		sp = 5;
		direction = other.image_angle;
		range = other.range;
		maxRange = range;
		damage = other.damage;
		depth = other.depth+1
		
		image_xscale = other.image_xscale;
		image_yscale = image_xscale;
		maxXScale = image_xscale;
		maxYScale = image_yscale;
		
		
	}
	
	forceshoot = false;
}