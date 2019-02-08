/// @description Insert description here
// You can write your code in this editor

if((id == global.current_player.id) && (self.can_swing == true))
{
	
	if(mouse_check_button_pressed(mb_right))
	{
		image_speed = 10;
		can_swing = false;
		instance_create_depth(x,y,2,obj_weapon_axe_01);
		alarm[0] = 50;
	}
	
}