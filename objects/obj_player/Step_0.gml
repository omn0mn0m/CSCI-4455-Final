/// @description Movement
// You can write your code in this editor
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

x_speed = (right_key - left_key) * var_speed;
y_speed = (down_key - up_key) * var_speed;

if (place_meeting(x + x_speed, y, obj_obstacle)) {
	// Move the player horizontally until it meets the block
	while (!place_meeting(x + sign(x_speed), y, obj_obstacle)) {
		x = x + sign(x_speed);
	}
	
	x_speed = 0; // Stop the player
}

if (place_meeting(x, y + y_speed, obj_obstacle)) {
	// Move the player horizontally until it meets the block
	while (!place_meeting(x, y + sign(y_speed), obj_obstacle)) {
		y = y + sign(y_speed);
	}
	
	y_speed = 0; // Stop the player
}

x += x_speed;
y += y_speed;