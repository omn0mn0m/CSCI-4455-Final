/// @description Show either title or credit button
// You can write your code in this editor
if (var_start_button) {
	draw_sprite(spr_title_credits, 2, x, y);
} else {
	if (var_at_credits) {
		draw_sprite(spr_title_credits, 1, x, y);
	} else {
		draw_sprite(spr_title_credits, 0, x, y);
	}
}