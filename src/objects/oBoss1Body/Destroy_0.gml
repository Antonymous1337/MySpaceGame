/// @description Insert description here
// You can write your code in this editor

if (hp <= 0) {
	DropCoins(scoreVal);
	oSpawner.numOfSpawns--;
	
	for (var i = 0; i < array_length_1d(bigturrets); i++) {
		instance_destroy(bigturrets[i]);
	}
	
	for (var i = 0; i < array_length_1d(smallturrets); i++) {
		instance_destroy(smallturrets[i]);
	}
	
	instance_destroy();
}