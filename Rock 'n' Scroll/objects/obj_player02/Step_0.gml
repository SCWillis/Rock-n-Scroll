/// @description Insert description here
// You can write your code in this editor


//if variable is lead by a c_ then it was made during creation.

//player input ==================================================================================

key_right = keyboard_check(ord("D"));
//key_right = keyboard_check(vk_right);
key_left = -(keyboard_check(ord("A")));
//key_left = -(keyboard_check(vk_left));
key_jump = keyboard_check_pressed(vk_space);
//key_jump = keyboard_check_pressed(vk_space);


//if the player is out of jumps


//react to inputs ================================================================================
move = key_left + key_right;
c_hspeed = move * c_movespeed;

 // stops the player from accelerating too fast on fall
if(c_vspeed < c_fall_rate)
{
	c_vspeed += c_gravity;	
}


if(key_jump > 0 && c_jumps > 0)
{
	show_debug_message(c_jumps);
	c_vspeed = key_jump * -c_jumpspeed;
	c_jumps -= 2; //no idea why this has to be 2 for double jump
	
		
}

//if the player lands on the ground the jumps are reset.
if(place_meeting(x, y + c_buffer, v_wall))
{
	//c_vspeed = key_jump * -c_jumpspeed
	c_jumps = c_max_jumps;
	c_jump_lock = 1;
}



//Detect floor and wall objects for each step ====================================================

for(i = 0; i < array_length_1d(floorObjects); i++)
{
	if(place_meeting(x,y+c_vspeed + c_buffer, floorObjects[i]))
	{
		v_wall = floorObjects[i];
	}
	
	if(place_meeting(x + c_hspeed + c_buffer, y, floorObjects[i]))
	{
		h_wall = floorObjects[i];	
	}
}

//horizontal collision ===========================================================================
if(place_meeting(x + c_hspeed, y, h_wall))
{
	while(!place_meeting(x + sign(c_hspeed), y, h_wall))
	{
			x += sign(c_hspeed); 
	}
	c_hspeed = 0;
}


//Vertical collision ============================================================================

if(place_meeting(x, y + c_vspeed, v_wall))
{
	while(!place_meeting(x, y + sign(c_vspeed), v_wall))
	{
			y += sign(c_vspeed); 
	}	
	c_vspeed = 0;
}


//add to player movement (Bottom of step most likely) ========================================================================

x+= c_hspeed;
y+= c_vspeed;