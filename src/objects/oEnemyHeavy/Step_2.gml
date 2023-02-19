/// @description ?

shootCooldown = max(0, shootCooldown-1);

if ((shooting || point_distance(x,y,room_width/2,room_height/2) < shootDistance) && shootCooldown == 0) {
	
	if (shotsRemaining > 0) {
		shooting = true;
		
		with (instance_create_layer(x+lengthdir_x(cannonDistance, cannonOneAngle+image_angle), y+lengthdir_y(cannonDistance, cannonOneAngle+image_angle), "Bullets", oEnemyBullet)) {
			sp = 12;
			direction = other.image_angle + random_range(-10,10);
			image_angle = direction;
			range = other.shootDistance;
			damage = other.damage;
		}
		
		with (instance_create_layer(x+lengthdir_x(cannonDistance, cannonTwoAngle+image_angle), y+lengthdir_y(cannonDistance, cannonTwoAngle+image_angle), "Bullets", oEnemyBullet)) {
			sp = 12;
			direction = other.image_angle + random_range(-10,10);
			image_angle = direction;
			range = other.shootDistance;
			damage = other.damage;
		}
		ScreenShake(8,4);
		
		shotsRemaining--;
		shootCooldown = 5;
		
		hsp -= lengthdir_x(0.35,image_angle);
		vsp -= lengthdir_y(0.35,image_angle);
	} else {
		shooting = false;
		shootCooldown = shootCooldownMax;
		shotsRemaining = shotsPerBurst;
	}
}