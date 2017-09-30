/*
loads a nodemap from a given file
arguments:
arg0: string (the location of the file to load from)
returns:
real (the id of the nodemap. this NEEDS to exist and be valid or this script may bug out)
*/
var map_data = ds_map_create();//creates the map data container that will eventuaily be returned
var next_id;
var max_itr;
var map_nodes;
var map_links;
var working_string;
var height;
var width;
ini_open(argument0);//opens the file to load from
working_string = ini_read_string("nodes","nodes","0");
width = ini_read_real("nodes","width",3);
height = ini_read_real("nodes","height",1);
map_nodes = ds_grid_create(width,height);
if working_string != "0"
{
ds_grid_read(map_nodes,working_string);
}
else
{
ds_grid_clear(map_nodes,-1)
}
ds_map_add(map_data,"nodes",map_nodes);
working_string = ini_read_string("links","links","0");
width = ini_read_real("links","width",4);
height = ini_read_real("links","height",1);
map_links = ds_grid_create(width,height);
if working_string != "0"
{
ds_grid_read(map_links,working_string);
}
else
{
ds_grid_clear(map_links,-0)
}
ds_map_add(map_data,"links",map_links);
next_id = ini_read_real("next_id","next_id",1);//loads the id of the next node to be created
ds_map_add(map_data,"next_id",next_id);//adds a id for the next node thatll be created
max_itr = ini_read_real("max_itr","max_itr",0);
ds_map_add(map_data,"max_itr",max_itr)
ini_close();//closes the file
return map_data

