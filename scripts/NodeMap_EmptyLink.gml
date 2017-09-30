/*
looks for an empty linkslot if an empty slot is found returns it if none is found creates a slot and returns it
arguments:
arg0: real (nodemap)
returns:
real (empty linkslot)
*/
var map_data = argument0;
var map_links = ds_map_find_value(map_data,"links");
var linkslots = ds_grid_height(map_links);
var free_slot = -1;
if ds_grid_value_exists(map_links,0,0,0,linkslots-1,-1)
{
free_slot = ds_grid_value_y(map_links,0,0,0,linkslots-1,-1);
}
else
{
ds_grid_resize(map_links,4,linkslots+1);
ds_grid_set(map_links,0,linkslots,-1)
free_slot = linkslots;
}
return free_slot;

