keyw = keyboard_check(ord("W"));
keys = keyboard_check(ord("S"));
keyd = keyboard_check(ord("D"));
keya = keyboard_check(ord("A"));

keyup = keyboard_check(vk_up);
keydown = keyboard_check(vk_down);
keyleft = keyboard_check(vk_left);
keyright = keyboard_check(vk_right);


if (keyw) and !instance_place(x,y-1,obj_wall) {
	y -= 1;
}

if (keys) and !instance_place(x,y+1,obj_wall){
	y += 1;
	
}
if (keyd) and !instance_place(x+1,y,obj_wall){
	x += 1;
	image_xscale=-1;
}
if (keya) and !instance_place(x-1,y,obj_wall) {
	x -= 1;
	image_xscale=1;
}


if keyup {
	ring = 0;
	if !instance_exists(obj_ring) {instance_create_layer(x,y,"GUI",obj_ring)}
	obj_ring.image_index = ring;
	obj_button.image_index = ring;
}

if keyleft {
	ring = 1;	
	if !instance_exists(obj_ring) {instance_create_layer(x,y,"GUI",obj_ring)}
	obj_ring.image_index = ring;
	obj_button.image_index = ring;
}
if keydown {
	ring = 2;	
	if !instance_exists(obj_ring) {instance_create_layer(x,y,"GUI",obj_ring)}
	obj_ring.image_index = ring;
	obj_button.image_index = ring;
}
if keyright {
	ring = 3;	
	if !instance_exists(obj_ring) {instance_create_layer(x,y,"GUI",obj_ring)}
	obj_ring.image_index = ring;
	obj_button.image_index = ring;
}




if place_meeting(x,y,obj_yslime) and obj_button.image_index != 0 {
	var col = instance_place(x, y, obj_yslime);
	instance_destroy(col);
	instance_destroy(obj_ring);
	obj_button.image_index = 4;
} else if place_meeting(x,y,obj_yslime) and obj_button.image_index == 0 {
	instance_create_layer(x,y,"GUI",obj_gameover)
	instance_destroy(obj_ring);
	instance_destroy(id);
}


if place_meeting(x,y,obj_wslime) and obj_button.image_index != 1 {
	var col = instance_place(x, y, obj_wslime);
	instance_destroy(col);
	instance_destroy(obj_ring);
	obj_button.image_index = 4;
} else if place_meeting(x,y,obj_wslime) and obj_button.image_index == 1 {
	instance_create_layer(x,y,"GUI",obj_gameover)
	instance_destroy(obj_ring);
	instance_destroy(id);
}



if place_meeting(x,y,obj_bslime) and obj_button.image_index != 2 {
	var col = instance_place(x, y, obj_bslime);
	instance_destroy(col);
	instance_destroy(obj_ring);
	obj_button.image_index = 4;
} else if place_meeting(x,y,obj_bslime) and obj_button.image_index == 2 {
	instance_create_layer(x,y,"GUI",obj_gameover)
	instance_destroy(obj_ring);
	instance_destroy(id);
}



if place_meeting(x,y,obj_rslime) and obj_button.image_index != 3 {
	var col = instance_place(x, y, obj_rslime);
	instance_destroy(col);
	instance_destroy(obj_ring);
	obj_button.image_index = 4;
} else if place_meeting(x,y,obj_rslime) and obj_button.image_index == 3 {
	instance_create_layer(x,y,"GUI",obj_gameover)
	instance_destroy(obj_ring);
	instance_destroy(id);
}


