/*
draws all nodes in a nodemap to the screen (must be in a draw event)
arguments:
arg0: real (map id)
returns:
void
*/
var map_data = argument0;
var map_nodes = ds_map_find_value(map_data,"nodes");
var nodeslots = ds_grid_height(map_nodes);
var nodex;
var nodey;
var col = draw_get_color();
draw_set_color(c_blue);
for(n=0;n<nodeslots;n+=1)
{
    if(ds_grid_get(map_nodes,0,n) > -1 )
    {
    node_id = ds_grid_get(map_nodes,0,n);
    nodex = ds_grid_get(map_nodes,1,n);
    nodey = ds_grid_get(map_nodes,2,n);
    draw_circle(nodex,nodey,5,false);
    } 
}
draw_set_color(col);

