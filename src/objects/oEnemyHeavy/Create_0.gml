/// @description ?

hp = 15 + (2 * _oLevel.curLevel);
maxHp = hp;

scoreVal = int64(10 + (_oLevel.curLevel * 1.5));

maxSpeed = 3;
maxAcc = 0.15;
dec = 0.05;

hsp = 0;
vsp = 0;

hAcc = 0;
vAcc = 0;

iFrame = 0; // only for collision with oPlayer

shootCooldownMax = 120;
shootCooldown = 0;
damage = 1+(_oLevel.curLevel*0.5);

shotsPerBurst = 10; // each count counts for two bullets, one out of each "cannon"
shotsRemaining = shotsPerBurst;

var xFromCannon = 22 * image_xscale;
var yFromCannon = 15 * image_yscale;
cannonOneAngle = point_direction(0,0,xFromCannon,yFromCannon);
cannonTwoAngle = point_direction(0,0,xFromCannon,-yFromCannon);
cannonDistance = point_distance(0,0,xFromCannon,yFromCannon);

shooting = false;

// target - updates when met
targetDistance = 350;
shootDistance = 400;

var randoDirection = random_range(0,360);
changeToTimer = 180;
changeToTimerMax = changeToTimer;
xTo = room_width/2 + lengthdir_x(targetDistance, randoDirection);
yTo = room_height/2 + lengthdir_y(targetDistance, randoDirection);

direction = point_direction(x,y,xTo,yTo);
buff = sprite_width*1.5; // so that if the sprite intersect with target itll update, not if x/y coordinates become perfect

oSpawner.numOfSpawns++;