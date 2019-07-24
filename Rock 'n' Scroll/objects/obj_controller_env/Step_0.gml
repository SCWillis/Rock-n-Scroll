/// @description Insert description here
// You can write your code in this editor

//view_camera[1] = camera_create_view(v_width/2,v_height/2,v_width,v_height,0,obj_parent_player,-1,-1,300,300);

//view_camera[1] = camera_create_view(100,100,v_width,v_height,0,obj_parent_player,-2,-2,500,200);


camera_set_view_pos(view_camera[0], global.current_player.x, global.current_player.y);