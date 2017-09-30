/*
finds a path between two nodes
arguments:
arg0: real (map id)
arg1: real (node 1 id)
arg2: real (node 2 id)
returns:
real (path id (not a chain of nodes a path resource id))
*/
var map_data = argument0;
var map_nodes = ds_map_find_value(map_data,"nodes");
var map_links = ds_map_find_value(map_data,"links");
var start_node = argument1;
var end_node = argument2;
var current_node;
var current_node_y;
var open_nodes = ds_grid_create(5,1);
var closed_nodes = ds_grid_create(5,1);
var copy_grid = ds_grid_create(1,1);
ds_grid_set(open_nodes,0,0,start_node);//node id
ds_grid_set(open_nodes,1,0,NodeMap_Dist(map_data,start_node,end_node));//distance to target
ds_grid_set(open_nodes,2,0,-1);//parent node (none for first node)
ds_grid_set(open_nodes,3,0,0);//distance from start node
ds_grid_set(open_nodes,4,0,NodeMap_Dist(map_data,start_node,end_node));
var nodes_checked = 0
var connected_nodes;
var grid_pos;
var lowest_cost;
var dist_to;
var dist_from;
var current_node_dist_from
var max_itr = ds_map_find_value(map_data,"max_itr")
var itr = 0
while  ( !(ds_grid_value_exists(closed_nodes,0,0,0,ds_grid_height(closed_nodes)-1,end_node))  && (ds_grid_get(open_nodes,0,0) != -1) ) && (max_itr <= 0 || itr <= max_itr)
    {
    //show_debug_message("current iteration of pathfinding: "+ string(itr))
    itr++
    lowest_cost = ds_grid_get_min(open_nodes,4,0,4,ds_grid_height(open_nodes));
    current_node_y = ds_grid_value_y(open_nodes,4,0,4,ds_grid_height(open_nodes),lowest_cost);
    current_node = ds_grid_get(open_nodes,0,current_node_y);
    current_node_dist_from = ds_grid_get(open_nodes,3,current_node_y);
    //show_debug_message("lowest_cost: " + string(lowest_cost) + "  goes to node: " + string(current_node));
    //show_debug_message("current_node: " + string(current_node))
    //add the current node to the closed list
    ds_grid_set_grid_region(closed_nodes,open_nodes,0,current_node_y,4,current_node_y,0,ds_grid_height(closed_nodes)-1);
    ds_grid_resize(closed_nodes,5,ds_grid_height(closed_nodes)+1);
    //remove the current node from the open list
    ds_grid_resize(copy_grid,ds_grid_width(open_nodes),ds_grid_height(open_nodes));
    ds_grid_copy(copy_grid,open_nodes);
    ds_grid_set_grid_region(open_nodes,copy_grid,0,current_node_y+1,4,ds_grid_height(open_nodes)-1,0,current_node_y);
    if ds_grid_height(open_nodes) != 1
    {
    ds_grid_resize(open_nodes,5,ds_grid_height(open_nodes)-1);
    }
    else
    {
    ds_grid_set(open_nodes,0,0,-1);
    }
    //find out what nodes need adding to the open list
    connected_nodes = NodeMap_ConnectedNodes(map_data,current_node);
    for(nodes_checked = 0; nodes_checked < array_height_2d(connected_nodes); nodes_checked++)
        {
        if ds_grid_value_exists(open_nodes,0,0,0,ds_grid_height(open_nodes),connected_nodes[nodes_checked,0]) == false && ds_grid_value_exists(closed_nodes,0,0,0,ds_grid_height(closed_nodes),connected_nodes[nodes_checked,0]) == false
            {
            if ds_grid_get(open_nodes,0,0) != -1
            {
            ds_grid_resize(open_nodes,5,ds_grid_height(open_nodes)+1);
            grid_pos = ds_grid_height(open_nodes)-1;
            }
            else 
            {
            grid_pos = 0;
            }
            dist_to = NodeMap_Dist(map_data,connected_nodes[nodes_checked,0],end_node);
            dist_from = current_node_dist_from + connected_nodes[nodes_checked,1];
            ds_grid_set(open_nodes,0,grid_pos,connected_nodes[nodes_checked,0])//node id
            ds_grid_set(open_nodes,1,grid_pos,dist_to);//distance to target
            ds_grid_set(open_nodes,2,grid_pos,current_node);//parent node (none for first node)
            ds_grid_set(open_nodes,3,grid_pos,dist_from );//distance from start node
            ds_grid_set(open_nodes,4,grid_pos,dist_from + dist_to);
            } 
        else if ds_grid_value_exists(open_nodes,0,0,0,ds_grid_height(open_nodes),connected_nodes[nodes_checked,0])
            {
            grid_pos = ds_grid_value_y(open_nodes,0,0,0,ds_grid_height(open_nodes),connected_nodes[nodes_checked,0]);
            dist_to = NodeMap_Dist(map_data,connected_nodes[nodes_checked,0],end_node);
            dist_from = current_node_dist_from + connected_nodes[nodes_checked,1];
            if dist_from < ds_grid_get(open_nodes,3,grid_pos)
                {
                ds_grid_set(open_nodes,0,grid_pos,connected_nodes[nodes_checked,0])//node id
                ds_grid_set(open_nodes,1,grid_pos,dist_to);//distance to target
                ds_grid_set(open_nodes,2,grid_pos,current_node);//parent node (none for first node)
                ds_grid_set(open_nodes,3,grid_pos,dist_from );//distance from start node
                ds_grid_set(open_nodes,4,grid_pos,dist_from + dist_to);
                }
            }// end else if (node already on open list check)
        }
    }
//show_debug_message("out of path finding loop")
if !(ds_grid_value_exists(closed_nodes,0,0,0,ds_grid_height(closed_nodes)-1,end_node))
    {
    //show_debug_message("no path found total iterations: "+ string(itr))
    var path = path_add()
    ds_grid_destroy(open_nodes);
    ds_grid_destroy(closed_nodes);
    ds_grid_destroy(copy_grid);
    return path
    }

var point_y = ds_grid_value_y(closed_nodes,0,0,0,ds_grid_height(closed_nodes),end_node)
var parent_node = 0;
var route;
route[0] = end_node;
while parent_node != -1
{
parent_node = ds_grid_get(closed_nodes,2,point_y);
if parent_node != -1
{
route[array_length_1d(route)] = parent_node;
point_y = ds_grid_value_y(closed_nodes,0,0,0,ds_grid_height(closed_nodes),parent_node);
}
}
var path = path_add();
path_set_closed(path,false);
var nodex;
var nodey;
for(var i=array_length_1d(route) - 1;i > -1; i--)
    {
    nodex = NodeMap_GetNodeX(map_data,route[i]);
    nodey = NodeMap_GetNodeY(map_data,route[i]);
    path_add_point(path,nodex,nodey,100);
    }
ds_grid_destroy(open_nodes);
ds_grid_destroy(closed_nodes);
ds_grid_destroy(copy_grid);
//show_debug_message("path found total iterations: "+ string(itr))
return path;
