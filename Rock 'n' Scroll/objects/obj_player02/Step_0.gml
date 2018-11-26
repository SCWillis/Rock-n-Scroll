/// @description Insert description here
// You can write your code in this editor

//if variable is lead by a c_ then it was made during creation.

//player input
key_right = keyboard_check(ord("D"));
//key_right = keyboard_check(vk_right);
key_left = -(keyboard_check(ord("A")));
//key_left = -(keyboard_check(vk_left));
key_jump = keyboard_check_pressed(vk_space);


//react to inputs
move = key_left + key_right;
c_hspeed = move * c_movespeed;

if(c_vspeed < 10)
{
	c_vspeed += c_gravity;	
}


if(place_meeting(x,y+1,obj_ground_basic))
{
	c_vspeed = key_jump * -c_jumpspeed	
}


//horizontal collision
if(place_meeting(x + c_hspeed, y, obj_ground_basic))
{
	while(!place_meeting(x + sign(c_hspeed), y, obj_ground_basic))
	{
			x += sign(c_hspeed); 
	}
	
	c_hspeed = 0;
}


//Vertical collision
if(place_meeting(x, y + c_vspeed, obj_ground_basic))
{
	while(!place_meeting(x, y + sign(c_vspeed), obj_ground_basic))
	{
			y += sign(c_vspeed); 
	}
	
	c_vspeed = 0;
}

x+= c_hspeed;
y+= c_vspeed;