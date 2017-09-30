/*
deletes a node map thus removing it from memory
arguments:
arg0: real (the id of the nodemap)
returns:
void
*/
var map_data = argument0;
var map_nodes = ds_map_find_value(map_data,"nodes");
var map_links = ds_map_find_value(map_data,"links");
ds_grid_destroy(map_nodes);
ds_grid_destroy(map_links);
ds_map_destroy(map_data);

