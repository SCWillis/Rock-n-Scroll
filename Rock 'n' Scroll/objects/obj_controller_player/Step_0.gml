/// @description Insert description here
// You can write your code in this editor



//if(mouse_check_button_pressed(mb_left))
if(position_meeting(mouse_x, mouse_y, obj_parent_player))
{
	if(mouse_check_button_pressed(mb_left))
	{
	
		next_player = instance_nearest(mouse_x, mouse_y, obj_parent_player);
	
	
		if(next_player.id == global.current_player.id)
		{
			show_debug_message("Same Player");
		}
	
		if(next_player.id != global.current_player.id)
		{
			global.current_player = next_player;
			global.current_player.is_current_player = true;
			show_debug_message("Current Player: " + global.current_player.name);
		}
	
	}
}

