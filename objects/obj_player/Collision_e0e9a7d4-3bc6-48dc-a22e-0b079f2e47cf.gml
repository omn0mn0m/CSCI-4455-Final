/// @description Take damage from enemy collision
// You can write your code in this editor
if (var_can_take_damage) {
	health -= other.var_damage;
}

instance_destroy(other);