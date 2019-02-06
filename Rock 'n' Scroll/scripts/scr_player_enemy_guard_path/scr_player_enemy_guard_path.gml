
x_pos = argument0
y_pos = argument1
//path = argument2


path_add_point(argument2 ,x_pos + 10, y_pos, 5);
path_add_point(argument2 ,x_pos - 10, y_pos, 5);


path_start(argument2, 10 , path_action_restart, false);
