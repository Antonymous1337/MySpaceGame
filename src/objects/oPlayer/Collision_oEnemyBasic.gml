/// @description ?
if (iFrame <= 0) {
	if (hp > 0) hp -= 1;
	else instance_destroy();
	iFrame = maxiFrame;
	
	if (other.iFrame <= 0) {
		other.hp--;
		other.iFrame = 60;
		if (other.hp <= 0) {
			DropCoins(other.scoreVal);
			oSpawner.enemyCount--;
			instance_destroy(other);
		}
	}
}