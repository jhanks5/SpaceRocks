// Inherit the parent event
event_inherited();

// Play button starts game
if(instance_exists(obj_controls)) {
	instance_destroy(obj_controls);	
} else {
	instance_create_layer(room_width/2, room_height - 100, "Instances", obj_controls);	
}
