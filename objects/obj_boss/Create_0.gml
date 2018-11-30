/// @description Insert description here
// You can write your code in this editor
switch (global.current_level) {
	case 4:
		var_boss_type = 0;
		var_damage = 25;
		path_start(boss_path, 15, path_action_reverse, false);
		break;
	case 6:
		var_boss_type = 1;
		var_damage = 50;
		path_start(boss_path, 20, path_action_reverse, false);
		break;
	case 8:
		var_boss_type = 2;
		var_damage = 75;
		path_start(boss_path, 25, path_action_reverse, false);
		break;
	case 10:
		var_boss_type = 3;
		var_damage = 100;
		path_start(boss_path, 30, path_action_reverse, false);
		break;
	default:
		break
}