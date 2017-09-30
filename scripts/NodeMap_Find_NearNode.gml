/*
finds the nearest node to a given point
arguments:
arg0: real (the id of the nodemap)
arg1: real (the xloc of the point)
arg2: real (the yloc of the point)
returns:
real (the id of the nearest node to the point)
*/
var map_data = argument0;
var map_nodes = ds_map_find_value(map_data,"nodes");
var dist = 1000000;// just needs to be a very large number to begin with
var working_dist;// varible that is changed alot
var node_id = -1;
var count = 0;
var xloc = argument1;
var yloc = argument2;
var x_cur;
var y_cur;
repeat (ds_grid_height(map_nodes))
{
if ds_grid_get(map_nodes,0,count) != -1
    {
    x_cur = ds_grid_get(map_nodes,1,count);
    y_cur = ds_grid_get(map_nodes,2,count);
    working_dist = point_distance(xloc,yloc,x_cur,y_cur);
    if (working_dist < dist)   
        {
        dist = working_dist;
        node_id = ds_grid_get(map_nodes,0,count);
        }
    }
count++
}
return node_id;

