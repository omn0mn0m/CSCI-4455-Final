/// @description Insert description here
// You can write your code in this editor
//switch (global.current_level) {
//	case 4:
//		draw_sprite(spr_boss, 0, x, y);
//		break;
//	case 6:
//		draw_sprite(spr_boss, 1, x, y);
//		break;
//	case 8:
//		draw_sprite(spr_boss, 2, x, y);
//		break;
//	case 10:
//		draw_sprite(spr_boss, 3, x, y);
//		break;
//	default:
//		break
//}

//draw_sprite(spr_boss, var_boss_type, x, y);

draw_sprite(spr_boss, var_boss_type * 2 + incrementer, x, y);

if (frame_incrementer == frame_speed) {
incrementer += 1;

if (incrementer == max_frames) {
incrementer = 0;	
}

frame_incrementer = 0;
} else {
frame_incrementer += 1;	
}