/*
adds a weighted link between two nodes
arguments:
arg0: real (index of nodemap)
arg1: real (node a)
arg2: real (node b)
arg3: real (weight of link)
arg4: boolean (one-way? true - one-way, false = two-way, no jokes are to be made about this line!!!)
returns:
void
*/
var map_data = argument0;
var map_links = ds_map_find_value(map_data,"links");
var linkslot = NodeMap_EmptyLink(map_data);
ds_grid_set(map_links,0,linkslot,argument1);
ds_grid_set(map_links,1,linkslot,argument2);
ds_grid_set(map_links,2,linkslot,argument3);
ds_grid_set(map_links,3,linkslot,argument4);

