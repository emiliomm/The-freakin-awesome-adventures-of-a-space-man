/*
adds a link (with the weight being the length of the link) between two nodes
arguments:
arg0: real (index of nodemap)
arg1: real (node a)
arg2: real (node b)
arg3: boolean (one-way? true - one-way, false = two-way, no jokes are to be made about this line!!!)
returns:
void
*/
var map_data = argument0;
var map_links = ds_map_find_value(map_data,"links");
var linkslot = NodeMap_EmptyLink(map_data);
var weight = NodeMap_Dist(map_data,argument1,argument2);
ds_grid_set(map_links,0,linkslot,argument1);
ds_grid_set(map_links,1,linkslot,argument2);
ds_grid_set(map_links,2,linkslot,weight);
ds_grid_set(map_links,3,linkslot,argument3);

