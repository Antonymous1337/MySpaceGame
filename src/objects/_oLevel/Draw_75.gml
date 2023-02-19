/// @description Insert description here
// You can write your code in this editor

if (active) {
	draw_sprite_ext(sBoxBlack,0,0,0,w,h,0,c_black,(timer*1.3)/maxTimer);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_set_font(levelFont);
	draw_set_alpha((timer*1.3)/maxTimer);
	
	draw_text((w/2)+random_range(-shake, shake), (h/2)+random_range(-shake,shake),string_insert("Level ", curLevel, 0));
	draw_set_alpha(1);
	
	if (rising) {
		timer++;
		if (timer >= maxTimer) {
			rising = false;
			curLevel++;
			shake = maxShake;
		}
	} else {
		timer -= (timer > 0);
		shake -= (shake > 0);
		if (timer == 0) {
			active = false;
			rising = true;
			levelSet = false;
			oSpawner.spawning = true;
		}
	}
}