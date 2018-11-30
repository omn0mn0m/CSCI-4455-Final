/// @description Give the player stat changes
// You can write your code in this editor
switch(other.var_powerup_type) {
	case 0:
		var_speed = 30;
		alarm[0] = 40;
		break;
	case 1:
		health += 25;
		break;
	case 2:
		if (!var_has_shield) {
			var_has_shield = true;
			prev_health = health;
		}
		
		health = 100;
		break;
	case 3:
		var_can_shoot = true;
		alarm[1] = 80;
		break;
	default:
		break;
}

instance_destroy(other);