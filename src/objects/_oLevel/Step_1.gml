/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
if (!levelSet) {
	if (instance_exists(oSpawner)) {
		switch (curLevel) {
			case 1:
				with (oSpawner) {
					maxAsteroidSpawnCooldown = 90;
					asteroidRemain = 9;
					asteroidCurLimit = 3;
				}
				break;
			case 2:
				with (oSpawner) {
					maxAsteroidSpawnCooldown = 60;
					asteroidRemain = 15; 
					asteroidCurLimit = 5;
				}
				break;
			case 3:
				with (oSpawner) {
					maxAsteroidSpawnCooldown = 180;
					asteroidRemain = 5;
					asteroidCurLimit = 2;
					
					maxEnemySpawnCooldown = 120;
					enemyRemain = 3;
					enemyCurLimit = 1;
				}
				break;
			case 4:
				with (oSpawner) {
					maxAsteroidSpawnCooldown = 90;
					asteroidRemain = 5;
					asteroidCurLimit = 2;
					
					maxEnemySpawnCooldown = 90;
					enemyRemain = 6;
					enemyCurLimit = 2;
				}
				break;
			case 5:
				with (oSpawner) {
					maxAsteroidSpawnCooldown = 90;
					asteroidRemain = 9;
					asteroidCurLimit = 3;
					
					maxEnemySpawnCooldown = 90;
					enemyRemain = 6;
					enemyCurLimit = 3;
				}
				break;
			case 6:
				with (oSpawner) {
					maxAsteroidSpawnCooldown = 30;
					asteroidRemain = 25;
					asteroidCurLimit = 10;
					
					maxEnemySpawnCooldown = 0;
					enemyRemain = 0;
					enemyCurLimit = 0;
				}
				break;
			case 7:
				with (oSpawner) {
					maxAsteroidSpawnCooldown = 90;
					asteroidRemain = 9;
					asteroidCurLimit = 3;
					
					maxEnemySpawnCooldown = 5;
					enemyRemain = 5;
					enemyCurLimit = 5;
				}
				break;
			case 8:
				with (oSpawner) {
					maxAsteroidSpawnCooldown = 60;
					asteroidRemain = 15;
					asteroidCurLimit = 5;
					
					maxEnemySpawnCooldown = 30;
					enemyRemain = 8;
					enemyCurLimit = 4;
				}
				break;
			case 9:
				with (oSpawner) {
					maxAsteroidSpawnCooldown = 30;
					asteroidRemain = 20;
					asteroidCurLimit = 10;
					
					maxEnemySpawnCooldown = 30;
					enemyRemain = 10;
					enemyCurLimit = 5;
				}
				break;
			case 10:
				with (oSpawner) {	
					bossSpawned = false;
					
					maxAsteroidSpawnCooldown = 0;
					asteroidRemain = 0;
					asteroidCurLimit = 0;
					
					maxEnemySpawnCooldown = 0;
					enemyRemain = 0;
					enemyCurLimit = 0;
				}
				break;
			default:
				with (oSpawner) {
					bossSpawned = true;
					
					asteroidSpawnCooldown = 120;
					maxAsteroidSpawnCooldown = 180;
					asteroidRemain = 30; // total until asteroids stop spawning, even if destroyed
					asteroidCurLimit = 15; // total of asteroids on screen before pausing spawn

					enemySpawnCooldown = 120;
					maxEnemySpawnCooldown = 240;
					enemyRemain = 20;
					enemyCurLimit = 7;

					heavyEnemyCooldown = 240;
					maxHeavyEnemyCooldown = 360;
					heavyEnemyRemain = 10;
					heavyEnemyCurLimit = 3;
				}
				break;
		}
		
		levelSet = true;
	}
}