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



//Jumping

if(jumping == true)
{
	y -= (verticalSpeed)
}


if((keyboard_check(vk_space)))
{
		jumping = true;
		show_debug_message("Jump!!!")
}


//jumping = false;


if(scr_canJump(x,y,spriteHeight, playerFloors) == false)
{
	//jumping = false;
	y += playerGravity;	
}










