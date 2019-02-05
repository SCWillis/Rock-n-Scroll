/// @description Insert description here
// You can write your code in this editor



x = playerObject.x;
y = playerObject.y;

//move_towards_point(mouse_x,mouse_y,5);
image_angle = point_direction(x,y,mouse_x,mouse_y);


if(mouse_check_button_pressed(mb_left))
{
	instance_create_depth(x,y,1,obj_body_swap_test);
}


