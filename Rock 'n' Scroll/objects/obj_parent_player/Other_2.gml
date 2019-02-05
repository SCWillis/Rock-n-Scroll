/// @description Insert description here
// You can write your code in this editor


//
was_host = false;

//movement
c_vspeed = 0;
c_hspeed = 0;
c_movespeed = 8;
c_buffer = 1;

//jump
c_jumpspeed = 10;
c_fall_rate = 10;
c_gravity = 0.3;
c_jumps = 0;
c_max_jumps = 2; //multiples of 2. So 2 = double jump
c_jump_lock = 1;

//init floor and wall variables
v_wall = obj_ground_basic;
h_wall = obj_ground_basic;

//image variables
img_speed_static = 0;
img_speed_running = 9;
image_speed = img_speed_static;


//all possible ground / wall objects for the player
floorObjects[0] = obj_ground_basic;
floorObjects[1] = obj_ground_basic2;
floorObjects[2] = obj_ground_basic3;


