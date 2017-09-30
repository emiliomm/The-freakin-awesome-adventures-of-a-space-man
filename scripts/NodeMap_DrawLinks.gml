/*
draws all the links in a node map to the screen (must be in a draw event)
arguments:
arg0: real (map id)
returns:
void
*/
var map_data = argument0;
var map_links = ds_map_find_value(map_data,"links");
var linkslots = ds_grid_height(map_links);
var map_nodes = ds_map_find_value(map_data,"nodes");
var nodeslots = ds_grid_height(map_nodes);
var startnode;
var startx;
var starty;
var endnode;
var endx;
var endy;
for(n = 0; n < linkslots; n +=1)
{
    if(ds_grid_get(map_links,0,n)!= -1)
    {
    startnode = ds_grid_get(map_links,0,n);
    endnode = ds_grid_get(map_links,1,n);
    startnode = ds_grid_value_y(map_nodes,0,0,0,nodeslots-1,startnode);
    endnode = ds_grid_value_y(map_nodes,0,0,0,nodeslots-1,endnode);
    startx = ds_grid_get(map_nodes,1,startnode);
    starty = ds_grid_get(map_nodes,2,startnode);
    endx = ds_grid_get(map_nodes,1,endnode);
    endy = ds_grid_get(map_nodes,2,endnode);
        if ds_grid_get(map_links,3,n) = true
        {
        draw_line_width_color(startx,starty,endx,endy,3,c_black,c_red);
        }
        else
        {
        draw_line_width_color(startx,starty,endx,endy,3,c_black,c_black);
        }
    }
}

