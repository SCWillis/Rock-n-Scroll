/// @description Insert description here
// You can write your code in this editor


player_health = 100;


//
was_host = false;
is_player_gravity = 0.7;
is_enemy_gravity = 0.1;

//movement
c_vspeed = 0;
c_hspeed = 0;
c_movespeed = 6;
c_buffer = 1;

//jump
c_jumpspeed = 15 ;
c_fall_rate = 35;
c_gravity = is_player_gravity;
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
floorObjects[0] = obj_ground_basic01;
floorObjects[1] = obj_ground_basic;
floorObjects[2] = obj_ground_basic2;
floorObjects[3] = obj_ground_basic3;
floorObjects[4] = obj_ground_rocks01;
floorObjects[5] = obj_ground_hell01; 



