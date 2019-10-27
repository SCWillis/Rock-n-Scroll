//Obj Specific Step

//special attributes if this is the current host
if(id == global.current_player.id)
{
	//path_end(); // stop path so player can control
	
	if(mouse_check_button_pressed(mb_left))
	{
		instance_create_depth(x,y,1,obj_ammo_bullet01);	
	}
	c_gravity = is_player_gravity;
}



//Chase Physics
if(collision_circle(x, y, 300, global.current_player, false, true))
{
	mp_potential_step(global.current_player.x, global.current_player.y, 5,true);
	//c_gravity = 0.1;
	c_gravity = is_enemy_gravity;
}


if!(collision_circle(x, y, 300, global.current_player, false, true))
{
	//c_gravity = is_enemy_gravity;
	c_gravity = 0.3;
	//mp_potential_step(global.current_player.x, global.current_player.y, 5,true);
}
