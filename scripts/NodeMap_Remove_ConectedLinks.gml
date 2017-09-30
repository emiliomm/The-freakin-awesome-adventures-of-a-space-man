/*
removes all the links conected to a node
arguments:
arg0: real (the id of tha nodemap)
arg1: real (the id of the node)
returns:
void
*/
var map_data = argument0;
var map_links = ds_map_find_value(map_data,"links");
var total_links = ds_grid_height(map_links);
var count;
var total_nodes = 0;
var start_node = argument1;
var copy_grid = ds_grid_create(1,1);
for (count = 0; count < total_links; count += 1)
{
if ds_grid_get(map_links,0,count) = start_node  
    {
        if ds_grid_height(map_links) = 1
        {
        ds_grid_set(map_links,0,count,-1);
        }
        else
        {
        ds_grid_resize(copy_grid,ds_grid_width(map_links),ds_grid_height(map_links));
        ds_grid_copy(copy_grid,map_links);
        ds_grid_set_grid_region(map_links,copy_grid,0,count+1,4,ds_grid_height(map_links)-1,0,count);
        ds_grid_resize(map_links,4,ds_grid_height(map_links)-1);
        count--
        total_links = ds_grid_height(map_links);
        }
    }   
else if (ds_grid_get(map_links,1,count) = start_node)
    {
        if ds_grid_height(map_links) = 1
        {
        ds_grid_set(map_links,0,count,-1);
        }
        else
        {
        ds_grid_resize(copy_grid,ds_grid_width(map_links),ds_grid_height(map_links));
        ds_grid_copy(copy_grid,map_links);
        ds_grid_set_grid_region(map_links,copy_grid,0,count+1,4,ds_grid_height(map_links)-1,0,count);
        ds_grid_resize(map_links,4,ds_grid_height(map_links)-1);
        total_links = ds_grid_height(map_links);
        count--
        }
    }
}
ds_grid_destroy(copy_grid);

