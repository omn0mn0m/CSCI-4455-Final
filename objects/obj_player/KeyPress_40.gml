/// @description Shoot down
// You can write your code in this editor
if (var_can_shoot) {
	var inst = instance_create_layer(x, y, layer, obj_bullet);
	inst.direction = 1;
	audio_play_sound(sound_shoot, 1, false);
}