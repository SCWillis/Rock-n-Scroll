 /// @description Insert description here
// You can write your code in this editor


global.current_player = obj_player_start;
global.is_changing_host = false;


global.player_health = global.current_player.player_health;
show_debug_message("Starting HP" + string_format(global.player_health, 5, 1));
show_debug_message(string_format(global.player_health,5,1));


if(instance_exists(global.current_player))
{	
	
	global.current_player.is_current_player = true;
	
	show_debug_message(global.current_player.name);		
	
}


//General Player Variables
global.spirit_energy = 100;
has_spirit_energy = true;


