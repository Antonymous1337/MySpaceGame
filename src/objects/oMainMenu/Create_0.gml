/// @description ?

w = display_get_gui_width();
h = display_get_gui_height();
buff = 32;

menu_x = w+200;//+200;
menu_y = h-buff;
menu_x_target = w-buff;
xSpeed = 25; // less is faster, cant be 0
menu_font = menuFont;
menu_itemheight = font_get_size(menuFont);

choices[2] = "New Game";
choices[1] = "Continue";
choices[0] = "Quit";

choiceAmt = array_length_1d(choices);
menuOn = choiceAmt-1;
menuCommitted = -1;
menuControl = true;