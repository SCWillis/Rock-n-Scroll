/// @description Insert description here
// You can write your code in this editor


current_player = obj_player_start;


if(instance_exists(current_player))
{
	current_player.is_current_player = true;
	show_debug_message(current_player.name);	
}



