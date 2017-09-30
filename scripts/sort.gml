/*
 * Name: sort
 * Description:
 *      Sorts an array.
 *
 * Argument0 - The array to sort.
 * Argument1 - Size of array to sort.
 *
 */
 
var a, size;
a = argument0;
size = argument1;

while ( isSorted( a, size ) == false )
    shuffle( a, size );

