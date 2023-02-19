/// @Def - Drops coins based on 1 argument
/// @Args scoreVal - determines how much value of coins to be dropped

var minRange = 2;
var maxRange = 5;

// remember that all scorevals and all arguments that pass through can be int64, not necessarily int32
// which is why we can do numbers larger than 2 billion. Right now doing numbers larger than int64 is
// not necessary
// plus, not much need to add other classes of currency, if anything, we can increase value per coin 
// upgrade to x100 instead of x10

while (argument0 >= 100000000000000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sP4Safe;
		value = 100000000000000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 100000000000000;
}

while (argument0 >= 10000000000000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sP3Bar;
		value = 10000000000000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 10000000000000;
}

while (argument0 >= 1000000000000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sP2Bag;
		value = 1000000000000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 1000000000000;
}

while (argument0 >= 100000000000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sP1Coin;
		value = 100000000000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 100000000000;
}

while (argument0 >= 10000000000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sG4Safe;
		value = 10000000000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 10000000000;
}

while (argument0 >= 10000000000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sG3Bar;
		value = 10000000000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 10000000000;
}

while (argument0 >= 1000000000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sG2Bag;
		value = 1000000000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 1000000000;
}

while (argument0 >= 100000000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sG1Coin;
		value = 100000000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 100000000;
}

while (argument0 >= 10000000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sS4Safe;
		value = 10000000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 10000000;
}

while (argument0 >= 1000000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sS3Bar;
		value = 1000000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 1000000;
}

while (argument0 >= 100000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sS2Bag;
		value = 100000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 100000;
}

while (argument0 >= 10000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sS1Coin;
		value = 10000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 10000;
}

while (argument0 >= 1000) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sB4Safe;
		value = 1000;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 1000;
}

while (argument0 >= 100) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sB3Bar;
		value = 100;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 100;
}

while (argument0 >= 10) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sB2Bag;
		value = 10;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 10;
}

while (argument0 > 0) {
	with (instance_create_layer(x,y,"Coins",oCoin)) {
		sprite_index = sB1Coin;
		value = 1;
		sp = random_range(minRange,maxRange);
		direction = random_range(0,360);
	}
	argument0 -= 1;
}