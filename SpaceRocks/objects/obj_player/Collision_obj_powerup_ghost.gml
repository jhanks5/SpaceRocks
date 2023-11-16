// Set powerup variable to 2 and start timer
powerup = 2;
alarm[0] = 10 * 60;
// Make player ship slightly transparent
image_blend = c_white;
image_alpha = 0.4;
// Destroy ghost powerup when it's collected
instance_destroy(other);






