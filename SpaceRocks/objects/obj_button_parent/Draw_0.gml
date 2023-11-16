// Create
draw_self();

// Set font
draw_set_font(font_menu);

// Align
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw button_text at position of element
draw_text(x, y, button_text);

// Reset alignment property to default values
draw_set_halign(fa_left);
draw_set_valign(fa_top);






