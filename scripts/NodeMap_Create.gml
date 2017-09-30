/*
creates an empty nodemap and returns its index
arguments:
none
returns:
real (index of the nodemap)
*/
var map_data = ds_map_create();//creates the map data container that will eventuaily be returned
var map_nodes = ds_grid_create(3,1);// creates the empty list of nodes (this is a grid that will contain the location and indexes of the nodes)
ds_grid_clear(map_nodes,-1);// sets the value of the node slots to -1
ds_map_add(map_data,"nodes",map_nodes);//adds the empty list of nodes to the map data container
var map_links = ds_grid_create(4,1);//creates the empty list of links between nodes 
ds_grid_clear(map_links,-1);//sets the value of the link slots to -1
ds_map_add(map_data,"links", map_links);//adds the empty list of links to the map data container
ds_map_add(map_data,"next_id",1);//adds a id for the next node thatll be created
ds_map_add(map_data,"max_itr",0);//adds a tag to limit the maximum number of iterations to be made by the path finding algorithim (0 is unlimited)
return map_data;//returns the map data container

