 /// @description Insert description here
// You can write your code in this editor
/*
- Checks mouse position and mouse button status to see if the player takes a new host body.
- Creates the next host variable and updates the global player variable
*/

if(global.spirit_energy <= 0)
{
	global.spirit_energy = 0;
	has_spirit_energy = false;
	
}
else
{
	has_spirit_energy = true;	
}



if(position_meeting(mouse_x, mouse_y, obj_parent_player))
{
	//if(mouse_check_button_pressed(mb_left))
	if(keyboard_check_pressed(vk_shift) && (has_spirit_energy == true))
	{
		
		//pauses player movement to run host switch visual.
		global.is_changing_host = true;
		
		
		//finds the closest body and creates a variable.
		global.next_player = instance_nearest(mouse_x, mouse_y, obj_parent_player);	
		scr_hs_switch_host(); //switch host visual
	
	
		//if the body is the same one the player already in.
		if(global.next_player.id == global.current_player.id)
		{
			show_debug_message("Same Player");
		}
	
	
		//if the body is new, update global player attributes
		if(global.next_player.id != global.current_player.id)
		{
			global.current_player = global.next_player; 
			global.current_player.is_current_player = true;
			global.current_player.was_host = true; //marks that the player will die/release spirit after player leaves.
			
			global.spirit_energy -= 25; // removes spirit energy from the player
			
			show_debug_message("Current Player: " + global.current_player.name);
			show_debug_message("Spirit Energy: " + string_format(global.spirit_energy,5,0));
		}
	
	}
}




//Controls how often the player can switch hosts





