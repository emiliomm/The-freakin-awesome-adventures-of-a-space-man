/*
gets the y pos of a node
arguments
arg0: real (the nodemap id)
arg1: real (the node id)
returns:
real (the x pos of a the node)
*/
var map_data = argument0;
var map_nodes = ds_map_find_value(map_data,"nodes");
var node_id = argument1;
var nodeslots = ds_grid_height(map_nodes);
var node_slot;
if ds_grid_value_exists(map_nodes,0,0,0,nodeslots-1,node_id)
{
node_slot = ds_grid_value_y(map_nodes,0,0,0,nodeslots-1,node_id);
return ds_grid_get(map_nodes,2,node_slot);
}

