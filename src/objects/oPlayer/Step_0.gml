/// @description Insert description here
// You can write your code in this editor

shootCooldown = max(0, shootCooldown-1);
if (iFrame%15 < 10) image_alpha = 100;
else image_alpha = 0;
iFrame = max(0, iFrame-1);

if (mouse_check_button(mb_left) && shootCooldown == 0) {
	shootCooldown = maxShootCooldown;
	with (instance_create_layer(x, y, "Bullets", oBullet)) {
		sp = 15;
		direction = other.image_angle + random_range(3,-3);
		image_angle = direction;
		range = 500;
		damage = other.damage;
	}
	ScreenShake(6,6);
	
	//recoil
	//hSpeed -= lengthdir_x(0.65,image_angle);
	//vSpeed -= lengthdir_y(0.65,image_angle);
}

move_up = keyboard_check(ord("W"));
move_down = keyboard_check(ord("S"));
move_right = keyboard_check(ord("D"));
move_left = keyboard_check(ord("A"));

image_angle = point_direction(x, y, mouse_x, mouse_y);

if (move_up && move_down) {
	vAcceleration = 0;
} else if (move_up) vAcceleration = -maxAcceleration;
else if (move_down) vAcceleration = maxAcceleration;
else {
	if (vSpeed != 0) vAcceleration = -sign(vSpeed) * decelleration;
	else vAcceleration = 0;
}

if (move_left && move_right) {
	hAcceleration = 0;
} else if (move_left) hAcceleration = -maxAcceleration;
else if (move_right) hAcceleration = maxAcceleration;
else {
	if (hSpeed != 0) hAcceleration = -sign(hSpeed) * decelleration;
	else hAcceleration = 0
}

if (abs(hAcceleration) > 0.1 || abs(vAcceleration) > 0.1) {
	for (i = 0; i < 2; i++) {
		with (instance_create_layer(x,y,"Particles",oMovementParticle)) {
			sprite_index = choose(sMovementParticle1, sMovementParticle2, sMovementParticle3);
			hsp = (other.hSpeed/2)-other.hAcceleration*8 + random_range(-2,2);
			vsp = (other.vSpeed/2)-other.vAcceleration*8 + random_range(-2,2);
			image_angle = random_range(0,90);
		}
	}
}

if (abs(hSpeed + hAcceleration) < maxSpeed) hSpeed += hAcceleration;
else hSpeed = sign(hSpeed)*maxSpeed;

if (abs(vSpeed + vAcceleration) < maxSpeed) vSpeed += vAcceleration;
else vSpeed = sign(vSpeed)*maxSpeed;

//x = (x + hSpeed)%room_width;
//y = (y + vSpeed)%room_height;