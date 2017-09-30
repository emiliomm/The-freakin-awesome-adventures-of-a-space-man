//scr_quicksort (Vector v, int izq, int der)
//argument0 = v es el vector
//argument1,2 = izq y der delimitan la zona de v sobre la que se realiza la partición

    v = argument0;

   piv = v[(izq + der) / 2]; //elección del pivote
   i = argument1;
   j = argument2;  
   //La partición finaliza cuando i>j
   while (i <= j)
   {
    //buscar 1 elemento mal situado a la izquierda del pivote
        while (v[i] < piv)
            i++;  //buscar 1 elemento mal situado a la derecha del pivote
        while (v[j] > piv)
            j--;  //intercambiar los elementos mal ubicados
        if (i < j)
        {
            i_aux = v[i];
            v[i] = v[j];
            v[j] = i_aux;
            i++;
            j--;
        }
        else if (i == j)
        {
        i++;
        j--;
        }
    }  
   //Repetir partición de los subvectores izquierdo y derecho
   //pero sólo si tienen más de un elemento
   if (izq < j)
   scr_quicksort (v, izq, j);
   if (i < der)
   scr_quicksort (v, i, der);

