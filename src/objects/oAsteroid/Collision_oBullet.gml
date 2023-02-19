/// @description Insert description here
// You can write your code in this editor

hp -= other.damage;

var bulletDirection = other.direction;
//pushback
hsp += lengthdir_x(other.speed, bulletDirection)/(power(strength,1.5));
vsp += lengthdir_y(other.speed, bulletDirection)/(power(strength,1.5));

// rotation speed
	// angle
	// point of collision (based on where the asteroid and meteor x, y is, seperated into 4 squares
	// strength
var angleToCenter = point_direction(other.x, other.y, x, y);
var angleDif = angleToCenter - other.direction;

if (angleDif < -90) angleDif += 360;
else if (angleDif > 90) angleDif -= 360;

rotation += angleDif / (10 * strength); // tweak with this
// this needs to be fixed

if (hp <= 0) {
	DropCoins(scoreVal*999999999);
	/*
	
	Instead could create script that can make specific types of asteroids
	Plan to make big asteroids fall apart into multiple smaller ones
	
	if (strength > 5) {
		with (instance_create_layer(x,y,"Asteroids",oAsteroid)) {
			x = other.x;
			y = other.y;
			speed = other.speed/2;
			direction = other.direction + random_range(30,60);
			strength = other.strength/2;
		}
		with (instance_create_layer(x,y,"Asteroids",oAsteroid)) {
			x = other.x;
			y = other.y;
			speed = other.speed/2;
			direction = other.direction + random_range(-60,-30);
			strength = other.strength/2;
		}
	}*/
	oSpawner.asteroidCount--;
	instance_destroy();
}

for (i = 0; i < 5; i++) {
	with (instance_create_layer(x+lengthdir_x(16*image_xscale, angleToCenter+180), y+lengthdir_y(16*image_yscale, angleToCenter+180), "Particles", oAsteroidHitParticle)) {
		hsp -= lengthdir_x(random_range(0.5,2), random_range(bulletDirection+180, angleToCenter));
		vsp -= lengthdir_y(random_range(0.5,2), random_range(bulletDirection+180, angleToCenter));
	}
}


instance_destroy(other);