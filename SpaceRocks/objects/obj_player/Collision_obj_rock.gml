if (powerup == 2) exit;

// Destroy ship if it collides with rock
effect_create_above(ef_firework, x, y, 1, c_white);
instance_destroy();

// Play sound when player dies
audio_play_sound(snd_lose, 0, false, 1, 0, random_range(1.1, 1.9));
obj_game.alarm[0] = 120;
