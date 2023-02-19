/// @description Insert description here
// You can write your code in this editor

sprite_index = choose(sAsteroid1, sAsteroid2, sAsteroid3);

strength = round(random_range(1,5));

scoreVal = int64(0.5 + (_oLevel.curLevel*0.5));
hp = strength + (_oLevel.curLevel);
image_xscale = strength;
image_yscale = strength;

speed = (6-strength)/2; // between 0.5 to 2.5

rotation = random_range(0.5,3);

direction = 0;

hsp = 0;
vsp = 0;

oSpawner.numOfSpawns++;
