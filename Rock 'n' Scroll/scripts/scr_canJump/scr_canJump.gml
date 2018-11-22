//Can the player jump on this surface


var thisObjectX=argument0, thisObjectY=argument1, spriteHeight=argument2, surfaces=argument3;


if(place_meeting(thisObjectX, thisObjectY+5, surfaces[1]))
{
	return true;
}

return false;