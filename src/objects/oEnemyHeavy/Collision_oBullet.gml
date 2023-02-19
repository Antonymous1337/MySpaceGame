/// @description ?

hp -= other.damage;
if (hp <= 0) {
	DropCoins(scoreVal);
	instance_destroy(other);
	oSpawner.heavyEnemyCount--;
	instance_destroy();
}

instance_destroy(other);