/// @description Insert description here
// You can write your code in this editor

x = global.current_player.x;
y = global.current_player.y;

image_angle = point_direction(global.current_player.x,global.current_player.y,mouse_x,mouse_y);

if(mouse_check_button_pressed(mb_middle))
{
	instance_create_depth(x,y,1,obj_bullet_basic);
}
