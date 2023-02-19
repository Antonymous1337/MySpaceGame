/// @desc moves object within room
/// @arg Object - object to be moved
/// @arg x - how much to move in x direction, typically just based on speed
/// @arg y - same as x but for vertical direction

function MoveObject(obj, xsp, ysp) {
	if (instance_exists(obj)) {
		if (instance_exists(oPlayer)) {
			obj.x = (obj.x + xsp - oPlayer.hSpeed)%room_width;
			obj.y = (obj.y + ysp - oPlayer.vSpeed)%room_height;	
	
		
			if (obj.x < 0) obj.x = room_width + obj.x;
			else obj.x %= room_width;
	
			if (obj.y < 0) obj.y = room_height + obj.y;
			else obj.y %= room_height;
		} else {
			obj.x = (obj.x + xsp)%room_width;
			obj.y = (obj.y + ysp)%room_height;	
	
		
			if (obj.x < 0) obj.x = room_width + obj.x;
			else obj.x %= room_width;
	
			if (obj.y < 0) obj.y = room_height + obj.y;
			else obj.y %= room_height;
		}
	}
}

