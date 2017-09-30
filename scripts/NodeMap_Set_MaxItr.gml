/* 
sets the max iterations to be made by the path finding algorithm on a specific map
arguments:
arg0: real (index of nodemap)
arg1: real (max number of iterations (<= 0 counts as unlimted)
returns:
void
*/
var map_data = argument0;
ds_map_replace(map_data,"max_itr",argument1)

