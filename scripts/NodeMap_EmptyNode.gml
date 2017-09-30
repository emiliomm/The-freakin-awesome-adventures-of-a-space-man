/*
looks for an empty node if one is found it is returned otherwise one is created and returned
arguments:
arg0: real (index of the nodemap in which a free space is needed)
returns:
real (empty nodeslot(the y location of the nodeslot))
*/
var map_data = argument0;//gets the map data container
var map_nodes = ds_map_find_value(map_data,"nodes");//gets the nodelist from the data container
var free_node = -1;//creates the value that will be returned
var node_count = ds_grid_height(map_nodes); //gets the number of nodeslots in the nodelist
var node_current = 0;
do
{
if ds_grid_get(map_nodes,0,node_current) = -1
    {
    free_node = node_current
    }
else
    {node_current += 1}
}
until free_node != -1 || node_current = node_count
if free_node = -1 //create a nodeslot if no free slot was found
{
ds_grid_resize(map_nodes,3,node_count+1);
free_node = node_count;
ds_grid_set(map_nodes,0,free_node,-1);
}
return free_node;

