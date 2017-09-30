var a, size;
a = argument0;
size = argument1;

var rnd, t;
for ( i = 0; i < size; i += 1)
{
    rnd = floor( random( size ) );
    t = variable_local_array_get( a, i );
    variable_local_array_set( a, i, variable_local_array_get( a, rnd ) );
    variable_local_array_set( a, rnd, t );
}

