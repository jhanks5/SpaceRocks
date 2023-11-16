/* Player movement */
// Accelerate
if keyboard_check(vk_up) {
	motion_add(image_angle, 0.1);
}

// Turn
if keyboard_check(vk_left) {
	image_angle += 4;
}

if keyboard_check(vk_right) {
	image_angle -= 4;
}

// Slow down/reverse
if keyboard_check(vk_down) {
	motion_add(image_angle, -0.1);
}

// Keep player in room, wraps to other side if player leaves
move_wrap(true, true, 0)

/* Shooting mechanics */
// Create bullet object when player hits left mouse button
if mouse_check_button_pressed(mb_left) {
	instance_create_layer(x,y, "Instances", obj_bullet)
	// Play shoot sound effect, don't loop
	// Have sound effect play a random pitch each time
	audio_play_sound(snd_shoot, 0, false, 1, 0, random_range(0.8, 1.2));
}