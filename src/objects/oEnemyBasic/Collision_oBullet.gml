/// @description ?

hp -= other.damage;
if (hp <= 0) {
	DropCoins(scoreVal);
	instance_destroy(other);
	oSpawner.enemyCount--;
	instance_destroy();
}

instance_destroy(other);