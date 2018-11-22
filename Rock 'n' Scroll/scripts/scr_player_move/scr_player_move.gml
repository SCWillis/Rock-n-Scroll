///MovePlayer(thisObjectX, thisObjectY. spriteWidth, horizontalSpeed, moveDirection)

var thisObjectX=argument0, thisObjectY=argument1, spriteWidth=argument2, horizontalSpeed=argument3, moveDirection=argument4;




if(place_empty(thisObjectX + (spriteWidth*moveDirection), thisObjectY))
{
	return horizontalSpeed * moveDirection;
}



