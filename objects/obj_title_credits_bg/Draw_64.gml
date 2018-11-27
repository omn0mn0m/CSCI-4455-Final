/// @description Displays current screen
// You can write your code in this editor
for (var i = 0; i < instance_number(obj_title_credits); i++) {
	var inst = instance_find(obj_title_credits, i);
	
	if (!inst.var_start_button) {
		if (inst.var_at_credits) {
			draw_sprite(spr_title_credits_bg, 1, x, y);
		} else {
			draw_sprite(spr_title_credits_bg, 0, x, y);
		}
	}
}
