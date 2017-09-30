/*
saves a nodemap to a given location
arguments:
arg0: real (nodemap id)
arg1: string (the location to save the nodemap)
returns:
void
*/
var map_data = argument0;
var save_to = argument1;
var next_id = ds_map_find_value(map_data,"next_id");
var map_nodes = ds_map_find_value(map_data,"nodes");
var map_links = ds_map_find_value(map_data,"links");
var max_itr = ds_map_find_value(map_data,"max_itr")
var working_real;
var working_string;
ini_open(argument1);
ini_write_real("next_id","next_id",next_id);
ini_write_real("max_itr","max_itr",max_itr)
working_string = ds_grid_write(map_nodes);
ini_write_string("nodes","nodes",working_string);
working_real = ds_grid_height(map_nodes);
ini_write_real("nodes","height",working_real);
working_real = ds_grid_width(map_nodes);
ini_write_real("nodes","width",working_real);
working_string = ds_grid_write(map_links);
ini_write_string("links","links",working_string);
working_real = ds_grid_height(map_links);
ini_write_real("links","height",working_real);
working_real = ds_grid_width(map_links);
ini_write_real("links","width",working_real);
ini_close();

