/// @description Movement
// You can write your code in this editor
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

x_speed = (right_key - left_key) * var_speed;
y_speed = (down_key - up_key) * var_speed;

x += x_speed;
y += y_speed;