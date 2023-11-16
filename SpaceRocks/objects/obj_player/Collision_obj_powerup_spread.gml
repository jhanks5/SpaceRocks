// When you collide with power-up, "collect" it
// Set power-up object variable to 1
powerup = 1;
// Power-up is active for 10 seconds
alarm[0] = 10 * 60;
// Change color of player ico
image_blend = c_yellow;
// Destroy power-up when you collide with it
instance_destroy(other);




