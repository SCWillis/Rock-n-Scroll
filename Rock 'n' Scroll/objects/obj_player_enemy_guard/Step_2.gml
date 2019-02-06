/// @description Insert description here
// You can write your code in this editor

//special attributes if this is the current host
if(id == global.current_player.id)
{
	path_end(); // stop path so player can control
	
	if(mouse_check_button_pressed(mb_left))
	{
		instance_create_depth(x,y,1,obj_bullet_basic);	
	}
}


if(collision_circle(x, y, 300, obj_parent_player, false, true))
{
	closest_player = instance_nearest(x,y,obj_parent_player);
	move_towards_point(global.current_player.x,global.current_player.y,2);
	show_debug_message("In Radius!");
}


if!(collision_circle(x, y, 300, obj_parent_player, false, true))
{
	closest_player = instance_nearest(x,y,obj_parent_player);
	move_towards_point(global.current_player.x,global.current_player.y,0);
	show_debug_message("Not in Radius!");
}
/*

//if not a host follow path
if(id != global.current_player.id && follow_path = true)
{
	follow_path = false;
	path_start(local_path, 5, path_action_restart, false);	
}

*/