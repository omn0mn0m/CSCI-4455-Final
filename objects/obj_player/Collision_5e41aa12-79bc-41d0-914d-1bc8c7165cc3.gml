/// @description Give the player stat changes
// You can write your code in this editor
switch(other.var_powerup_type) {
	case 0:
		var_speed = 20;
		alarm[0] = 40;
		break;
	case 1:
		var_speed = 10;
		alarm[0] = 80;
		break;
	default:
		break;
}

instance_destroy(other);