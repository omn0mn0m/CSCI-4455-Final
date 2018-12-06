/// @description Go to destination
// You can write your code in this editor
if (var_start_button) {
	audio_stop_sound(sound_title);
	room_goto_next();
} else {
	var_at_credits = !var_at_credits;
	
	obj_title_credits_bg.var_at_credits = var_at_credits;
}