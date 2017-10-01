switch (mpos2)
{
    case 0:
    {
        obj_nv.nv = 0;
        room_goto ( rm_0_1);
        break;
    }
    case 1: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_1_1 );
        break;
    }
    case 2: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_1_2 );
        break;
    }
    case 3: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_2_1 );
        break;
    }
    case 4: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_2_2 );
        break;
    }
    case 5: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_3_1 );
        break;
    }
    case 6: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_3_2 );
        break;
    }
    case 7: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_4_1 );
        break;
    }
    case 8: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_5_1 );
        break;
    }
    case 9: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_6_1 );
        break;
    }
    case 10: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_7_1 );
        break;
    }
    case 11: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_8_1 );
        break;
    }
    case 12: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_9_1 );
        break;
    }
    case 13: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_10_1 );
        break;
    }
    case 14: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_boss );
        break;
    }
    case 15: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_boss2 );
        break;
    }
    case 16: 
    {
        obj_nv.nv = 3;
        room_goto ( rm_boss3 );
        break;
    }
    case 17: 
    {
        instance_create(x,y,obj_menu);
        instance_destroy();
        break;
    }
    
    default: break;
}
