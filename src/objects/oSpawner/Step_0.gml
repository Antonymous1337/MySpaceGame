/// @description ?

if (spawning) {
	
	if (!bossSpawned) {
		switch(curBoss) {
			case 0:
				SpawnObject(oBoss1Body, "Bosses");
				break;
		}
		
		curBoss = (curBoss+1)%numOfBosses
		bossSpawned = true;
	}
	
	if (asteroidCount < asteroidCurLimit && asteroidRemain > 0) {
		if (asteroidSpawnCooldown <= 0) {
			asteroidSpawnCooldown = maxAsteroidSpawnCooldown;
			asteroidCount++;
			asteroidRemain--;
			
			with(SpawnObject(oAsteroid, "Asteroids")) {
				direction = point_direction(x, y, (room_width/4)+random_range(0,room_width/2), (room_height/4)+random_range(0,room_height/2));
				hsp = lengthdir_x(speed, direction);
				vsp = lengthdir_y(speed, direction);
			}
		}
	} else asteroidSpawnCooldown = maxAsteroidSpawnCooldown;

	if (enemyCount < enemyCurLimit && enemyRemain > 0) {
		if (enemySpawnCooldown <= 0) {
			enemySpawnCooldown = maxEnemySpawnCooldown;
			enemyCount++;
			enemyRemain--;
			
			SpawnObject(oEnemyBasic, "BasicEnemy");	
		}
	} else enemySpawnCooldown = maxEnemySpawnCooldown;


	if (heavyEnemyCount < heavyEnemyCurLimit && heavyEnemyRemain > 0) {
		if (heavyEnemyCooldown <= 0) {
			heavyEnemyCooldown = maxHeavyEnemyCooldown;
			heavyEnemyCount++;
			heavyEnemyRemain--;
			
			SpawnObject(oEnemyHeavy, "HeavyEnemy");	
		}
	} else heavyEnemyCooldown = maxHeavyEnemyCooldown;

	asteroidSpawnCooldown--;
	enemySpawnCooldown--;
	heavyEnemyCooldown--;
	
	if (numOfSpawns <= 0 && asteroidRemain + enemyRemain + heavyEnemyRemain <= 0) {
		spawning = false;
		with (_oLevel) {
			active = true;
			levelSet = false;
		}
	}
}