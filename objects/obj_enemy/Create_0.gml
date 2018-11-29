/// @description Insert description here
// You can write your code in this editor
if (global.current_level >= 2) {
	switch (global.current_level) {
		case 3:
			var_enemy_type = 0;
			break;
		case 5:
			var_enemy_type = 1;
			break;
		case 7:
			var_enemy_type = 2;
			break;
		case 9:
			var_enemy_type = 3;
			break;
		default:
			break
	}
} else {
	var_enemy_type = 0;
}

//enemy behavior
switch(var_enemy_type) {
	case 0:
		var_damage = 35;
		path_start(path_enemy1, irandom_range(8, 15), path_action_reverse, false);
		break;
	case 1:
		var_damage = 50;
		path_start(path_enemy2, irandom_range(8, 15), path_action_reverse, false);
		break;
	case 2:
		var_damage = 15;
		path_start(path_enemy3, irandom_range(8, 15), path_action_reverse, false);
		break;
	case 3:
		var_damage = 20;
		path_start(path_enemy4, irandom_range(8, 15), path_action_reverse, false);
		break;
	default:
		break;
}