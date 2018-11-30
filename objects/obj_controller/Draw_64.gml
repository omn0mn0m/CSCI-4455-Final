/// @description Insert description here
// You can write your code in this editor
if (obj_player.var_has_shield) {
	draw_healthbar(0,0,1136,32, health, c_black, c_navy, c_blue, 0, true, false);
} else {
	draw_healthbar(0,0,1136,32, health, c_black, c_red, c_lime, 0, true, false);
}

if (health <= 0) {
	if (obj_player.var_has_shield) {
		health = obj_player.prev_health;
		obj_player.var_has_shield = false;
	} else {
		audio_stop_sound(sound_bg);
		room_restart();
	}
}