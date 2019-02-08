// argument0 = self
// argument1 = parent bullet object so i can use many different types or bullets


if(place_meeting(argument0.x, argument0.y, argument1))
{
	if(argument0.id != global.current_player.id)
	{	
		argument0.player_health -= 10;
		instance_destroy(argument1.id);
		show_debug_message("Player HP: "+ string_format(argument0.player_health,5,1));
	}
}