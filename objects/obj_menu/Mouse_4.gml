/// @description Toggle gamePaused
// You can write your code in this editor
switch (button_function) {
	case "pause":
		vx = camera_get_view_x(view_camera[0]);
		vy = camera_get_view_y(view_camera[0]);
		
		instance_deactivate_all(true);
		//instance_create_depth(vx, vy, 0, obj_pause_bg);
		global.btn_restart = instance_create_depth(vx, vy + 64, -1, obj_menu);
		
		with (global.btn_restart) {
			button_function = "restart";
		}
		
		global.btn_quit = instance_create_depth(vx, vy + 128, -1, obj_menu);
		
		with (global.btn_quit) {
			button_function = "quit";
		}
		
		// ---------------- Create Level Select ---------------------
		global.btn_level_sel_1 = instance_create_depth(vx + 256, vy, -1, obj_level_select);
		
		with (global.btn_level_sel_1) {
			if (global.max_level >= 1) {
				var_target_level = 0;
			} else {
				var_target_level = 4;
			}
		}
		
		global.btn_level_sel_2 = instance_create_depth(vx + 256, vy + 64, -1, obj_level_select);
		
		with (global.btn_level_sel_2) {
			if (global.max_level >= 2) {
				var_target_level = 1;
			} else {
				var_target_level = 4;
			}
		}
		
		global.btn_level_sel_3 = instance_create_depth(vx + 256, vy + 128, -1, obj_level_select);
		
		with (global.btn_level_sel_3) {
			if (global.max_level >= 3) {
				var_target_level = 2;
			} else {
				var_target_level = 4;
			}
		}
		
		global.btn_level_sel_4 = instance_create_depth(vx + 256, vy + 196, -1, obj_level_select);
		
		with (global.btn_level_sel_4) {
			if (global.max_level >= 4) {
				var_target_level = 3;
			} else {
				var_target_level = 4;
			}
		}
		
		// ---------------- Pause Game State ---------------------
		global.gamePaused = 1;
		button_function = "play";
		break;
	case "play":
		//instance_destroy(obj_pause_bg);
		instance_destroy(global.btn_quit);
		instance_destroy(global.btn_restart);
		instance_destroy(global.btn_level_sel_1);
		instance_destroy(global.btn_level_sel_2);
		instance_destroy(global.btn_level_sel_3);
		instance_destroy(global.btn_level_sel_4);
		instance_activate_all();
		
		global.gamePaused = 0;
		button_function = "pause";
		break;
	case "quit":
		room_goto(room_title_credits);
		break;
	case "restart":
		room_restart();
		break;
}


