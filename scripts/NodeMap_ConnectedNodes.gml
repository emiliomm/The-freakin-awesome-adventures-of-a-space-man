/*
gets the connected nodes and returns the id's and link weights of the connected node in a 2d array
arguments:
arg0: real (the id of tha nodemap)
arg1: real (the id of the node)
returns:
array (a 2d array that with the node ids in the first column and the linkweights in the second)
*/
var map_data = argument0;
var map_links = ds_map_find_value(map_data,"links");
var total_links = ds_grid_height(map_links);
var count;
var conected_nodes = 0;
var total_nodes = 0;
var start_node = argument1;
for (count = 0; count < total_links; count += 1)
{
if ds_grid_get(map_links,0,count) = start_node  
    {
    conected_nodes[total_nodes,0] = ds_grid_get(map_links,1,count);
    conected_nodes[total_nodes,1] = ds_grid_get(map_links,2,count);
    total_nodes += 1;
    }
if (ds_grid_get(map_links,1,count) = start_node) && (ds_grid_get(map_links,3,count) = false)
    {
    conected_nodes[total_nodes,0] = ds_grid_get(map_links,0,count);
    conected_nodes[total_nodes,1] = ds_grid_get(map_links,2,count);
    total_nodes += 1;
    }
}
if is_array(conected_nodes)
{
return conected_nodes;
}
else
{
return noone
}

