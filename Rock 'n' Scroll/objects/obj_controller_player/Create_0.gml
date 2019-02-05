/// @description Insert description here
// You can write your code in this editor


global.current_player = obj_player_start;


if(instance_exists(global.current_player))
{
	global.current_player.is_current_player = true;
	show_debug_message(global.current_player.name);	
}



