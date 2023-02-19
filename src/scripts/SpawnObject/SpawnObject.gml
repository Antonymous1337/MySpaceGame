// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnObject(_obj, _layer){
	
	var w = room_width;
	var h = room_height;
	var _x = 0;
	var _y = 0;
	if (random_range(0,2) > 1) { // spawn on top or bottom, if false, left or right
		_x = random_range(0, w);
		if (random(2) > 1) { // spawn on top, if false then bottom
			_y = 0;
		} else {
			_y = h;
		}
	} else {
		_y = random_range(0, h);
		if (random_range(0,2) > 1) { // spawn on left, if false then right
			_x = 0;
		} else {
			_x = w;
		}
	}
	
	return instance_create_layer(_x,_y,_layer,_obj);
}