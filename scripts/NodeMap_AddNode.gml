/*
adds a node to a nodemap
arguments:
arg0: real (the index of the map which a node is to be added)
arg1: real (x pos of the node)
arg2: real (y pos of the node)
returns:
real (node id, the unique id of the node)
*/
var map_data = argument0;// gets the node map data container
var map_nodes = ds_map_find_value(map_data,"nodes");//gets the node list from the data container
var empty_node = NodeMap_EmptyNode(map_data); //finds a free nodeslot
var node_id = ds_map_find_value(map_data,"next_id");//gets the id for the next node to be created
ds_grid_set(map_nodes,0,empty_node,node_id);//sets the id of the node
ds_grid_set(map_nodes,1,empty_node,argument1);//sets the x pos of the node
ds_grid_set(map_nodes,2,empty_node,argument2);//sets the y pos of the node
ds_map_replace(map_data,"next_id",node_id + 1);//increments the value of the next node to be created
return node_id;

