/// @description Insert description here
// You can write your code in this editor
if (var_can_take_damage) {
	health -= other.var_damage;
	var_can_take_damage = false;
	alarm[2] = 10;
}
