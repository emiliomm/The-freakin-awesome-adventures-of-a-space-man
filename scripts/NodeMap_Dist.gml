/*
gets the distance between two nodes
arguments:
arg0: real (map id)
arg1: real (node 1 id)
arg2: real (node 2 id)
returns:
real (distance bettween two nodes)
*/
var map_data = argument0;
var map_nodes = ds_map_find_value(map_data,"nodes");
var node1_x = NodeMap_GetNodeX(map_data,argument1);
var node1_y = NodeMap_GetNodeY(map_data,argument1);
var node2_x = NodeMap_GetNodeX(map_data,argument2);
var node2_y = NodeMap_GetNodeY(map_data,argument2);
return point_distance(node1_x,node1_y,node2_x,node2_y);

