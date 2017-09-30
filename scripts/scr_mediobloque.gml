///Asigna la colisión y la imagen del mediobloque al bloque
event_inherited();
if (argument0 == 1) //    /
{
    image_index = 47;
    mask_index = msk_mediobloqueizq;
}
else if (argument0 == -1) //      \
{
    image_index = 48;
    mask_index = msk_mediobloqueder;
}