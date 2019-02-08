/// @description Insert description here
// You can write your code in this editor


//For the currently selected player
if(id == global.current_player.id)
{

	//player input ==================================================================================

	key_right = keyboard_check(ord("D"));
	//key_right = keyboard_check(vk_right);
	key_left = -(keyboard_check(ord("A")));
	//key_left = -(keyboard_check(vk_left));
	key_jump = keyboard_check_pressed(vk_space);



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

	if(global.is_changing_host = false)
	{
		x+= c_hspeed;
		y+= c_vspeed;
	}
	if(global.is_changing_host = true)//waits for player spirit to collide with new host
	{
		x+= 0;
		y+= 0;
	}
}


//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//if the body has never been a host and isnt supposed be destroyed. (regular enemies)
if(id != global.current_player.id)
{
	key_right = 0;
	//key_right = keyboard_check(vk_right);
	key_left = 0;
	//key_left = -(keyboard_check(vk_left));
	key_jump = 0;



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

	if(global.is_changing_host = false) //player moves like normal
	{
		x+= c_hspeed;
		y+= c_vspeed;
		
	}
	if(global.is_changing_host = true)//waits for player spirit to collide with new host
	{
		x+= 0;
		y+= 0;
	}

}
	

//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
//if the body is no longer the players and it was previously a host (needs to release a spirit and be destroyed)
if((id != global.current_player.id && was_host == true) || (player_health <= 0))
{
	scr_destroy_host(x,y,obj_effect_spirit);	
}



//%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
// Various scripts to run each step

if(instance_exists(self))
{
	scr_is_damaged_melee(self, obj_parent_hit_melee);
	scr_is_damaged_range(self, obj_parent_ammo_range);
}




