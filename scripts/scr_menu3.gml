switch (mpos3)
{
    case 0: 
    {
        if ((window_get_fullscreen()))
        {
            //1 = Pantalla completa, 0 = ventana
            scr_screen(0);
            global.fullscreen = 0;
            
        }
        else
        {
            //1 = Pantalla completa, 0 = ventana
            scr_screen(1);
            global.fullscreen = 1;
        }
        break;
    }
    case 1:
    {
        if (global.sound != 0)
        {
            scr_sound(0);
            global.sound = 0;
        }
        else
        {
            scr_sound(1);
            global.sound = 1;
        }
        break;
    }
    case 2:
    {
        scr_guardar_preferencias();
        instance_create(x,y,obj_menu);
        instance_destroy();
        break;
    }
    case 3:
    {
        scr_cargar_preferencias();
        instance_create(x,y,obj_menu);
        instance_destroy();
        break;
    }
    default: break;
}
