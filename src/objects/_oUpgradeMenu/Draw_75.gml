/// @description Insert description here
// You can write your code in this editor

x_cur += (x_to - x_cur) / xSpeed;

if (x_cur < w-buffFromWall) {
	draw_sprite_ext(sBoxBlack, 0, 0, 0, w, h, 0, -1, 0.5);
	draw_sprite_ext(sBoxDkGrey, 0, x_cur+buffFromWall, buffFromWall, w-buffFromSecondWall, h-buffFromSecondWall, 0, -1, 1);
	
	
}