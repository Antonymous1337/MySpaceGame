/// @description ?

timer--;
if (timer <= 0) instance_destroy();

MoveObject(id, hsp, vsp);
//x += (hsp - oPlayer.hSpeed)%room_width;
//y += (vsp - oPlayer.vSpeed)%room_height;