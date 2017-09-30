switch (mpos4)
{
    case 0: 
    {
        global.ranura = 1;
        scr_cargar_nivel(1);
        break;
    }
    case 1:
    {
        global.ranura = 2;
        scr_cargar_nivel(2);
        break;
    }
    case 2:
    {
        global.ranura = 3;
        scr_cargar_nivel(3);
        break;
    }
    case 3:
    {
        instance_create(x,y,obj_menu);
        instance_destroy();
        break;
    }
    default: break;
}
