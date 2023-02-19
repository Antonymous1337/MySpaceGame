/// @description ?

hp = 2 + (1.5 * _oLevel.curLevel);
maxHp = hp;

scoreVal = int64(4 + _oLevel.curLevel);

maxSpeed = 5;
maxAcc = 0.2;
dec = 0.05;

hsp = 0;
vsp = 0;

hAcc = 0;
vAcc = 0;

iFrame = 0; // only for collision with oPlayer

shootCooldownMax = 60;
shootCooldown = 0;
damage = 1+(_oLevel.curLevel*0.5);

// target - updates when met
targetDistance = 200;
shootDistance = 300;

var randoDirection = random_range(0,360);
changeToTimer = 180;
changeToTimerMax = changeToTimer;
xTo = room_width/2 + lengthdir_x(targetDistance, randoDirection);
yTo = room_height/2 + lengthdir_y(targetDistance, randoDirection);

direction = point_direction(x,y,xTo,yTo);
buff = sprite_width*2; // so that if the sprite intersect with target itll update, not if x/y coordinates become perfect

oSpawner.numOfSpawns++;