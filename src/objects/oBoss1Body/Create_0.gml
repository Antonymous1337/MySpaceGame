/// @description Insert description here
// You can write your code in this editor

hp = 100 + ((_oLevel.curLevel-1)*10); // extra 100 per level
maxHp = hp;
displayHp = 0;

scoreVal = int64(200);

var scale = 4;
image_xscale = scale;
image_yscale = scale;
r = 31+(sprite_width/2);
smallturretr = r-106;

timer = 240;
maxTimer = timer;
bigturretRecoil = 0;
maxBigturretRecoil = 64;
bigturretResetRate = 0.5;

rot = 0.03;

bigturrets = [];
for (var i = 0; i < 8; i++) { // creates big turrets
	bigturrets[i] = instance_create_layer(x+lengthdir_x(r,i*45), y+lengthdir_y(r,i*45), "Bosses", oBoss1BigTurret, {
		image_xscale : scale,
		image_yscale : scale,
		image_angle : i*45,
		depth : depth-1,
	});
	bigturrets[i].parentId = id
}

smallturrets = [];
for (var i = 0; i < 24; i++) { // creates small turrets
	smallturrets[i] = instance_create_layer(x+lengthdir_x(smallturretr,7.5+(i*15)), y+lengthdir_y(smallturretr,7.5+(i*15)), "Bosses", oBoss1SmallTurret, {
		image_xscale : scale,
		image_yscale : scale,
		image_angle : 7.5+(i*15),
		image_speed : 0,
		depth : other.depth-2
	});
}



bottombuffer = display_get_gui_height()-64;
rightbuffer = display_get_gui_width()-64;

// different boss stages either based on health or simply different attack
stage = 0;

oSpawner.numOfSpawns++;