/// @description Insert description here
// You can write your code in this editor

if (curState != TRANS_STATE.OFF) {
	switch (curState) {
		case TRANS_STATE.INTRO:
			if (transCur > 0) transCur--;
			else curState = TRANS_STATE.OFF;
			break;
		case TRANS_STATE.EXIT:
			if (transCur < transDuration) transCur++;
			else curState = TRANS_STATE.INTRO;
			break;
	}
}