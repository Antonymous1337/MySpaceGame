/// @description Insert description here
// You can write your code in this editor

if (instance_exists(oPlayer) && timer > 0) {
	if (distance_to_object(oPlayer) < distanceToGravitate) {
		direction = point_direction(x,y,oPlayer.x,oPlayer.y);
		sp += 0.35;
	} else {
		sp = max(sp-0.15, 0);
	}
	
} else instance_destroy();


MoveObject(id,lengthdir_x(sp,direction),lengthdir_y(sp,direction));

timer--;