/// @description ?

menu_x += (menu_x_target - menu_x) / xSpeed;

if (menuControl) {
	
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) menuOn = (menuOn+1)%choiceAmt;
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
		menuOn--;
		if (menuOn < 0) menuOn = choiceAmt-1;
	}
	
	if (keyboard_check_pressed(vk_enter)) {
		menuCommitted = menuOn;
		menuControl = false;
		menu_x_target = w+200;
		//_oTransition.curState = TRANS_STATE.EXIT;
	}
	
} else if (menu_x > menu_x_target-50) {
	
	switch (menuCommitted) {
		case 2: case 1:
			room_goto_next();
			break;
		case 0: game_end();
	}
}