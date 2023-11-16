/* Collision events when bullet collides with rock */

// Play sound when rock is destroyed
audio_play_sound(snd_rockdestroy, 0, false, 1, 0, random_range(0.6, 1.1));

// Destroy bullet
instance_destroy(other);

// Create explosion effect at rock's location
effect_create_above(ef_explosion, x, y, 1, c_white);

// Rock will change direction
direction = random(360);

// If rock is big, make it small. Make two small rocks.
if sprite_index == spr_rock_big {
	sprite_index = spr_rock_small;
	instance_copy(true);
} else if instance_number(obj_rock) < 12 {
	// Less than 12 rocks, change rock into big rock
	// Make it go outside the room so it can re-enter
	// Gives "destruction and replacement" effect
	sprite_index = spr_rock_big;
	x = -100
} else {
	// Rock is small and we have 12 or more rocks
	// Destroy rock
	instance_destroy();
}

obj_game.points += 50;

