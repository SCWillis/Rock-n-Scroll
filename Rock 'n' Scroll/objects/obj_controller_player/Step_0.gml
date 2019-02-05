/// @description Insert description here
// You can write your code in this editor
/*
- Checks mouse position and mouse button status to see if the player takes a new host body.
- Creates the next host variable and updates the global player variable
*/



if(position_meeting(mouse_x, mouse_y, obj_parent_player))
{
	if(mouse_check_button_pressed(mb_left))
	{
		//finds the closest body and creates a variable.
		next_player = instance_nearest(mouse_x, mouse_y, obj_parent_player);	
	
		//if the body is the same one the player already in.
		if(next_player.id == global.current_player.id)
		{
			show_debug_message("Same Player");
		}
	
	
		//if the body is new, update global player attributes
		if(next_player.id != global.current_player.id)
		{
			global.current_player = next_player; 
			global.current_player.is_current_player = true;
			global.current_player.was_host = true; //marks that the player will die/release spirit after player leaves.
			
			show_debug_message("Current Player: " + global.current_player.name);
		}
	
	}
}

