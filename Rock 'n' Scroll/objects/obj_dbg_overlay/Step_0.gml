 /// @description Insert description here
// You can write your code in this editor


show_debug_overlay(show_overlay);


if(keyboard_check_pressed(vk_control))
{
	show_overlay = !(show_overlay);
}

if(keyboard_check_pressed(ord("R")))
{
	game_restart();	
}
