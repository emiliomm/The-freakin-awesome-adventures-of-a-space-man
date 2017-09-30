switch (mpos5)
{
    case 0: 
    {
        scr_nueva_partida(1);
        break;
    }
    case 1:
    {
        scr_nueva_partida(2);
        break;
    }
    case 2:
    {
        scr_nueva_partida(3);
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
