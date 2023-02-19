/// @description ?

MoveObject(id, lengthdir_x(sp, direction), lengthdir_y(sp, direction));
//x = (x + hsp - oPlayer.hSpeed)%room_width;
//y = (y + vsp - oPlayer.vSpeed)%room_height;

with (instance_create_layer(x,y,"Particles",oMovementParticle)) {
	sprite_index = choose(sMovementParticle1, sMovementParticle2, sMovementParticle3);
	hsp = lengthdir_x(-other.sp, other.direction)/16 + random_range(-1,1);
	vsp = lengthdir_y(-other.sp, other.direction)/16 + random_range(-1,1);
	image_xscale = 0.65;
	image_yscale = 0.65;
	timer = 15;
	image_angle = random_range(0,90);
}

if (range <= 0) instance_destroy();
range -= sp;