/*
removes any links between two nodes
arguments:
arg0: real (the id of the nodemap)
arg1: real (the id of the first node)
arg2: real (the id of the second node)
*/
var map_data = argument0;
var map_links = ds_map_find_value(map_data,"links");
var node1 = argument1;
var node2 = argument2;
var count = 0;
var copy_grid = ds_grid_create(1,1);
repeat (ds_grid_height(map_links))
{
if ((ds_grid_get(map_links,0,count) = node1) && (ds_grid_get(map_links,1,count) = node2))||((ds_grid_get(map_links,0,count) = node2) && (ds_grid_get(map_links,1,count) = node1))
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
        }
    }
else 
{
count++
}
}
ds_grid_destroy(copy_grid)

