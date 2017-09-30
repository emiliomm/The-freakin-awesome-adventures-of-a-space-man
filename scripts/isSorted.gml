var a;
a = argument0;

for ( i = 1; i < argument1; i += 1 )
{
    if ( variable_local_array_get( a, i ) < variable_local_array_get( a, i-1 ) )
        return false;
}

return true;

