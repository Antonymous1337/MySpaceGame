/// @def Shake Screen
/// @args Magnitude - how intense the screen shake is
/// @args Duration - for how long (in frames) the screen shake lasts

with (oCamera) {
	if (argument0 > shake_remain) {
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_duration = argument1;
	}
}