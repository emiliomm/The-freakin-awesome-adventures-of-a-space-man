if (argument0 == 0)
{
    sound_global_volume(0);
    sound_stop_all();
}
else
{
    sound_global_volume(1);
    if (!sound_isplaying(msc_menu))
        sound_loop(msc_menu);
}
