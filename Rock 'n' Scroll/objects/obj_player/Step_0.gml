/// @description Insert description here
// This is the player object

//Status variables
//canJump = scr_canJump(x,y,spriteHeight, playerFloors);

//End of status variables 








//Player Horizontal Movement
if(keyboard_check(ord("A")) or keyboard_check(vk_left))
{
	dir = -1;
	x += scr_player_move(x, y, spriteWidth, horizontalSpeed, dir);
}
if(keyboard_check(ord("D")) or keyboard_check(vk_right))
{
	dir = 1;
	x += scr_player_move(x, y, spriteWidth, horizontalSpeed, dir);
}




//player Vertical Movement





//Player Jump

//if the player is on a floor that they can jump on

if(keyboard_check(vk_space))
{
	if(scr_canJump(x,y,spriteHeight, playerFloors) == true)
	{
		
	}
}

if(scr_canJump(x,y,spriteHeight, playerFloors) != true)
{
	y += playerGravity;	
}





