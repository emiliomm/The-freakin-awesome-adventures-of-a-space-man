if (argument0 == 0)
{
    window_set_fullscreen(false);
    view_wview[0] = 640;
    view_hview[0] = 480;
    view_wport[0] = view_wview[0];
    view_hport[0] = view_hview[0];
    surface_resize(application_surface, 640,480);
}
else
{
    window_set_fullscreen(true);
    view_wview[0] = round(display_get_width());
    view_hview[0] = round(display_get_height());
    view_wport[0] = view_wview[0];
    view_hport[0] = view_hview[0];
    surface_resize(application_surface, round(display_get_width()), round(display_get_height()));
}
