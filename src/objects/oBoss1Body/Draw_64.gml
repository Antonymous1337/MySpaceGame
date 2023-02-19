/// @description Insert description here
// You can write your code in this editor

with (oMap) {
	if (on) {
		draw_sprite_ext(sBoss1Icon,0, x1 + ((guiSize/room_width)*other.x), y1 + ((guiSize/room_width)*other.y), 0.5, 0.5, 0, c_white,1);
	}
}

draw_set_font(bossFont);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_text(32, bottombuffer, "Boss: ");

//draw_sprite_stretched(sBoxRed,0,32,bottombuffer,rightbuffer, oMap.guiSize/16);
draw_sprite_ext(sBoxRed,0,32,bottombuffer,rightbuffer, oMap.guiSize/16, 0, -1, 1);
if (displayHp-hp > 0.001) displayHp += (hp-displayHp)/20; // smooth effect upon health drain
else displayHp = hp;

var remain = displayHp/maxHp; // percentage value
//draw_sprite_stretched(sBoxGreen,0,32,bottombuffer,rightbuffer*remain, oMap.guiSize/16);
draw_sprite_ext(sBoxGreen,0,32,bottombuffer,rightbuffer*remain, oMap.guiSize/16, 0, c_green, 0.9);