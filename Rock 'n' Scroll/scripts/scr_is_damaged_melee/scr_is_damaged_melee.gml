
hp = argument0.player_health;


if(place_meeting(argument0.x, argument0.y, argument1))
{
	if(argument0.id != global.current_player.id)
	{	
		argument0.player_health -= argument1.damage;
		argument1.damage = 0;		
		show_debug_message("Player HP: "+ string_format(argument0.player_health,5,1));
	}
}