/// @description Insert description here
// You can write your code in this editor

swap_pause = true;

jump_body = instance_nearest(mouse_select_x, mouse_select_y, obj_parent_body);
x = jump_body.x;
y = jump_body.y;

show_debug_message("Alarm Triggered");
instance_destroy(jump_body.id);
