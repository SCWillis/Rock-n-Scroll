/// @description Insert description here
// You can write your code in this editor


if(place_meeting(x, y, global.next_player))
{
	global.is_changing_host = false; //allows all players to move again.
	instance_destroy();	
}