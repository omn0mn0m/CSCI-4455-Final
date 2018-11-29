/// @description Insert description here
// You can write your code in this editor
if (global.current_level < 2) {
	var vx = camera_get_view_x(view_camera[0]);
	
	vx += 1200;
	camera_set_view_pos(view_camera[0],vx,camera_get_view_y(view_camera[0]));

	x += 256;	
} else if (global.current_level == 2) {
	room_goto(room_level);	
} else {
	
}

global.current_level += 1;