/// @description Insert description here
// This is the player object

//Status variables
//canJump = scr_canJump(x,y,spriteHeight, playerFloors);

//End of status variables 


//=========== Gravity ============================================================


//If the player is NOT on a designated floor, then gravity takes over.

if(jumping == false)
{
	if(scr_canJump(x,y,spriteHeight, playerFloors) == false) 
	{	
		y += playerGravity;
	}

}



//=================== R & L Movement ==================================================

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



//========== Jumping ================================================================

//Reset Jumps

if(scr_canJump(x,y,spriteHeight, playerFloors) == true)
{
	jumping = false;
	jumps = maxJumps;
	show_debug_message(verticalSpeed);
	
}


// Player jump physics
if((keyboard_check_pressed(vk_space) && (jumps > 0))) 
{
		verticalSpeed = baseVSpeed; // reset vertical speed
		jumping = true; // jumping is now enabled
		jumps -= 1;
}

if(jumping == true)
{	
	//verticalSpeed = verticalSpeed*jumpFallRate;
	if(verticalSpeed >= -20)//caps out fall rate
	{
		verticalSpeed = verticalSpeed - jumpFallRate;
	}
	y -= verticalSpeed;
}

if(verticalSpeed <= peakJump) // whem the jump reaches is relative max height
{
	//jumping = false;
	//verticalSpeed = baseVSpeed; // reset vertical speed
}







