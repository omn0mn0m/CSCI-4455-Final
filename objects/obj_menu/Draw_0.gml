/// @description Draws the GUI image
// You can write your code in this editor
vx = camera_get_view_x(view_camera[0]);
vy = camera_get_view_y(view_camera[0]) + 34;

switch (button_function) {
	case "pause":
		draw_sprite(menu_buttons, 0, x, y);
		x = vx;
		y = vy;
		break;
	case "play":
		draw_sprite(menu_buttons, 1, x, y);
		x = vx;
		y = vy;
		break;
	case "restart":
		draw_sprite(menu_buttons, 3, x, y);
		x = vx;
		y = vy + 64;
		break;
	case "quit":
		draw_sprite(menu_buttons, 2, x, y);
		x = vx;
		y = vy + 128;
		break;
}

