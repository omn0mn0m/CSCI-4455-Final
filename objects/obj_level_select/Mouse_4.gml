/// @description Go to level
// You can write your code in this editor
switch (var_target_level) {
	case 0:
		global.current_level = 3;
		room_goto(room_level);
		break;
	case 1:
		global.current_level = 5;
		room_goto(room_level);
		break;
	case 2:
		global.current_level = 7;
		room_goto(room_level);
		break;
	case 3:
		global.current_level = 9;
		room_goto(room_level);
		break;
	default:
		break;
}