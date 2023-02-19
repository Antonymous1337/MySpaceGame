/// @description ?

draw_set_font(menuFont);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);

for (var i = 0; i < choiceAmt; i++) {
	var borderWidth = 2;
	var txt = choices[i];
	
	if (menuOn == i) {
		txt = string_insert("> ", txt, 0);
		var col = c_white;
	}
	else var col = c_grey;
	
	var yy = menu_y - (menu_itemheight * (i*1.5));

	
	draw_set_color(c_black);
	draw_text(menu_x-borderWidth,yy,txt);
	draw_text(menu_x+borderWidth,yy,txt);
	draw_text(menu_x,yy-borderWidth,txt);
	draw_text(menu_x,yy+borderWidth,txt);
	
	draw_set_color(col)
	draw_text(menu_x, yy, txt);
}