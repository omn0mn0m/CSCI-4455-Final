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

switch(var_enemy_type) {
	case 0:
		var_damage = 35;
		break;
	case 1:
		var_damage = 50;
		break;
	case 2:
		var_damage = 15;
		break;
	case 3:
		var_damage = 20;
		break;
	default:
		break;
}