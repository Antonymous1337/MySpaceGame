/// @description Insert description here
// You can write your code in this editor

enum TRANS_STATE {
	OFF = 0,
	INTRO = 1,
	EXIT = 2
}
curState = TRANS_STATE.INTRO;

transDuration = 60;
transCur = 60;

w = display_get_gui_width();
h = display_get_gui_height();