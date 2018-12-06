/// @description Moves to next level
// You can write your code in this editor
if (global.current_level < 2) {
	var vx = camera_get_view_x(view_camera[0]);
	
	vx += 1200;
	camera_set_view_pos(view_camera[0],vx,camera_get_view_y(view_camera[0]));

	x += 512;
	
	global.current_level += 1;
} else if (global.current_level == 2) {
	audio_stop_sound(sound_tutorial);
	
	global.current_level += 1;
	
	if (global.current_level > (global.max_level * 2) + 2) {
		global.max_level += 1;
	}
	
	room_goto(room_level);	
} else if (global.current_level == 10) {
	audio_stop_sound(sound_bg);
	audio_stop_sound(sound_boss);
	
	global.current_level += 1;
	room_goto(room_title_credits);
} else {
	if (global.current_level % 2 == 0) {
		audio_stop_sound(sound_boss);
		
		global.current_level += 1;
		
		if (global.current_level > (global.max_level * 2) + 2) {
			global.max_level += 1;
		}
		
		room_goto(room_level);
	} else {
		if (room == room_transition) {
			audio_stop_sound(sound_tutorial);
			
			global.current_level += 1;
			room_goto(room_boss);
		} else {
			room_goto(room_transition);	
		}
	}
}

