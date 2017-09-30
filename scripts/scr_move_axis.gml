///scr_move_axis(xaxis, thereshold, spd)

var xaxis = argument0;
var threshold = argument1;
var spd = argument2;
var magnitude = point_direction(0,0,xaxis,0);

//Mueve el personaje si puede
if (magnitude >= threshold)
{
    if (!place_meeting(x+xaxis*spd, y, obj_bloque))
    {
        x += xaxis * spd;
    }
}