/// @description Insert description here
// You can write your code in this editor

w = display_get_gui_width();
h = display_get_gui_height();

timer = 75;
maxTimer = timer;

levelSet = true; // true once variable for level is set

// for draw event
active = true;
rising = false;

curLevel = 10;

// since its a gui, we have to create new screen shake variables
shake = 20; // both magnitude and duration
maxShake = 20;