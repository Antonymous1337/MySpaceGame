/// @description Insert description here
// You can write your code in this editor

if (solocontrol) {
	if (point_distance(x,y,room_width/2,room_height/2) < range && shootCooldown == 0) {
		shootCooldown = maxShootCooldown;
		with (instance_create_layer(x, y, "Bosses", oBigBullet)) {
			sp = other.bulletspeed;
			direction = other.image_angle + random_range(3,-3);
			image_angle = direction;
			depth = other.depth-3;
		
			range = other.bulletrange;
			maxRange = range;
			damage = other.damage;
		}
		ScreenShake(4,4);
	}
}


shootCooldown -= (shootCooldown > 0);
image_index = round((shootCooldown/maxShootCooldown)*sprite_get_number(sBoss1SmallTurret));