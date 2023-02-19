/// @description Insert description here
// You can write your code in this editor

// move boss
MoveObject(id,0,0);
image_angle += rot;

// move and rotate turrets
for (var i = 0; i < array_length_1d(bigturrets); i++) {
	with (bigturrets[i]) {
		image_angle = other.image_angle + (i*45);
		x = other.x+lengthdir_x(other.r-other.bigturretRecoil, image_angle);
		y = other.y+lengthdir_y(other.r-other.bigturretRecoil, image_angle);
	}
}

for (var i = 0; i < array_length_1d(smallturrets); i++) {
	
	with (smallturrets[i]) {
		x = other.x+lengthdir_x(other.smallturretr, other.image_angle+7.5+(i*15))
		y = other.y+lengthdir_y(other.smallturretr, other.image_angle+7.5+(i*15));
		image_angle = point_direction(x,y,room_width/2,room_height/2);
	}
}

// shoot

if (timer <= 0) {
	timer = maxTimer;
	for (var i = 0; i < array_length_1d(bigturrets); i++) {
		bigturrets[i].forceshoot = true;
		bigturretRecoil = maxBigturretRecoil;
	}
}

timer--;
bigturretRecoil = max(0, bigturretRecoil-bigturretResetRate);

if (hp <= 0) instance_destroy();