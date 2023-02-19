/// @description ?
cam = view_camera[0];
follow = oPlayer;
halfCamWidth = camera_get_view_width(cam)/2;
halfCamHeight = camera_get_view_height(cam)/2;


x = room_width/2;
y = room_height/2;

// fix gentle movement
xTo = x;
yTo = y;

if (instance_exists(follow)) {
	xTo = follow.x;
	yTo = follow.y;
}

shake_duration = 0;
shake_magnitude = 0;
shake_remain = 0;

counterx = 0;
countery = 0;

s1 = layer_get_id("Stars1");
s2 = layer_get_id("Stars2");
s3 = layer_get_id("Stars3");
s4 = layer_get_id("Stars4");