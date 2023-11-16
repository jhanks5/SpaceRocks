// Create player object
draw_self();

if (alarm[0] > 0) {
	// Center text above ship
	draw_set_halign(fa_center);
	// Draw alarm value
	// We divide by 60 to get it into seconds rather than frames
	var _time = round(alarm[0] / 60);
	draw_text(x, y - 60, _time);
	// Reset alignment
	draw_set_halign(fa_left);
}






