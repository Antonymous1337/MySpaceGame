/// @description Insert description here
// You can write your code in this editor
if (iFrame <= 0) {
	if (hp > 0) hp -= 1;
	else {
		DropCoins(other.scoreVal);
		instance_destroy();
	}
	iFrame = maxiFrame;
}