/// @description ?


/// @description Insert description here
// You can write your code in this editor

image_angle = point_direction(x, y, room_width/2, room_height/2);

direction = point_direction(x, y, xTo, yTo); // remember that xTo and yTo is based on player location, WHICH IS STATIC

var booleanXMet = false;
var booleanYMet = false;

/*
if (xTo-buff < x && x < xTo+buff) booleanXMet = true;
else if (xTo-buff > x) hAcc = maxAcc;
else hAcc = -maxAcc;

if (yTo-buff < y && y < yTo+buff) booleanYMet = true;
else if (yTo-buff > y) hAcc = maxAcc;
else hAcc = -maxAcc;
*/

///*
if (y > yTo+buff) {
	vAcc = -maxAcc;
} else if (y < yTo-buff) {
	vAcc = maxAcc;
} else {
	if (vsp != 0) vAcc = -sign(vsp) * dec;
	else vAcc = 0;
	booleanYMet = true;
}

if (x > xTo+buff) {
	hAcc = -maxAcc;
} else if (x < xTo-buff) {
	hAcc = maxAcc;
} else {
	if (hsp != 0) hAcc = -sign(hsp) * dec;
	else hAcc = 0;
	booleanXMet = true;
}//*/

// change xTo and yTo
if (changeToTimer <= 0 || (booleanXMet && booleanYMet)) {
	var randoDirection = random_range(0,360);
	changeToTimer = changeToTimerMax;
	xTo = (room_width/2) + lengthdir_x(targetDistance, randoDirection);
	yTo = (room_height/2) + lengthdir_y(targetDistance, randoDirection);
}

if (abs(hAcc) > 0.1 || abs(vAcc) > 0.1) {
	for (i = 0; i < 2; i++) {
		with (instance_create_layer(x,y,"Particles",oMovementParticle)) {
			sprite_index = choose(sMovementParticle1, sMovementParticle2, sMovementParticle3);
			hsp = (other.hsp/2)-other.hAcc*8 + random_range(-2,2);
			vsp = (other.vsp/2)-other.vAcc*8 + random_range(-2,2);
			image_angle = random_range(0,90);
		}
	}
}

if (abs(hsp + hAcc) < maxSpeed) hsp += hAcc;
else hsp = sign(hsp)*maxSpeed;

if (abs(vsp + vAcc) < maxSpeed) vsp += vAcc;
else vsp = sign(vsp)*maxSpeed;

MoveObject(id, hsp, vsp);
//x = (x + hsp - oPlayer.hSpeed)%room_width;
//y = (y + vsp - oPlayer.vSpeed)%room_height;

iFrame -= (iFrame > 0);
changeToTimer -= (changeToTimer > 0);