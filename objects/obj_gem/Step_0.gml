/// @description Insert description here
// You can write your code in this editor

image_index = hp;

if place_meeting(x,y,par_slime) {
	var col = instance_place(x, y, par_slime);
	instance_destroy(col);
	hp += 1;
}

if hp >= 5 {
	instance_create_layer(x,y,"GUI",obj_gameover)
	hp = 5;
}
