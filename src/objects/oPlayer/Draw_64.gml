/// @description Score
draw_sprite_stretched(sBoxRed,0,32,32,oMap.x1-64, oMap.guiSize/8);

if (displayHp-hp > 0.001) displayHp += (hp-displayHp)/20; // smooth effect upon health drain
else displayHp = hp;

var remain = displayHp/maxHp; // percentage value
draw_sprite_stretched(sBoxGreen,0,32,32,(oMap.x1-64)*remain, oMap.guiSize/8);

draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);
draw_set_font(scoreFont);
draw_text(32, 72, string_insert("$", global.playerScore, 0));