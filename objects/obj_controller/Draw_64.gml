/// @description Insert description here
// You can write your code in this editor
draw_healthbar(0,0,1136,32, health, c_black, c_red, c_lime, 0, true, false);

if (health <= 0) {
	room_restart();	
}