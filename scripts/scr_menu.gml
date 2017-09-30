switch (mpos)
{
    case 0: //Nueva Partida
    {
        instance_create(x,y,obj_menu5);
        instance_destroy();
        break;
    }
    case 1: //Cargar partida
    {
        instance_create(x,y,obj_menu4);
        instance_destroy();
        break;
    }
    case 2: //
    {
        instance_create(x,y,obj_menu2);
        instance_destroy();
        break;
    }
    case 3: //
    {
        instance_create(x,y,obj_menu3);
        instance_destroy();
        break;
    }
    case 4: //
    {
        room_goto(rm_credits);
        break;
    }
    case 5:
    {
        url_open_ext( 'https://drive.google.com/file/d/0B0jyHEhGaBIeTWFPeUo0UXdMMEE/view?usp=sharing', '_blank');
        break;
    }
    case 6:
    {
        game_end();
        break;
    }
    default: break;
}
