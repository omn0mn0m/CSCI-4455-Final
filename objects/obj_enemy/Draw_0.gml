/// @description Enemy selection and other such
// You can write your code in this editor
draw_sprite(spr_enemy, var_enemy_type * 2 + incrementer, x, y);

if (frame_incrementer == frame_speed) {
incrementer += 1;

if (incrementer == max_frames) {
incrementer = 0;	
}

frame_incrementer = 0;
} else {
frame_incrementer += 1;	
}