/*
removes a node from a nodemap
arguments:
arg0: real (the id of the nodemap)
arg1: real (the id of the node)
returns:
void
*/
var map_data = argument0;
var map_nodes = ds_map_find_value(map_data,"nodes");
var nodey;
if ds_grid_value_exists(map_nodes,0,0,0,ds_grid_height(map_nodes)-1,argument1)
{
nodey = ds_grid_value_y(map_nodes,0,0,0,ds_grid_height(map_nodes)-1,argument1);
ds_grid_set(map_nodes,0,nodey,-1);
}

