//scr_nivel_actual(x)
// Si x = 1; el script devuelve la room del nivel
// Si x = 2; el script devuelve el nombre del nivel
if (argument0 == 1)
{
    var nivel;
    switch (global.fase_actual)
    {
        case 0:
        {
            nivel = rm_0_1;
            break;
        }
        case 1: 
        {
            nivel = rm_1_1;
            break;
        }
        case 2: 
        {
            nivel = rm_1_2;
            break;
        }
        case 3: 
        {
            nivel = rm_2_1_inicio;
            break;
        }
        case 4: 
        {
            nivel = rm_2_2;
            break;
        }
        case 5: 
        {
            nivel = rm_3_1;
            break;
        }
        case 6: 
        {
            nivel = rm_3_2;
            break;
        }
        case 7: 
        {
            nivel = rm_4_1;
            break;
        }
        case 8: 
        {
            nivel = rm_5_1;
            break;
        }
        case 9: 
        {
            nivel = rm_6_1;
            break;
        }
        case 10: 
        {
            nivel = rm_7_1;
            break;
        }
        case 11: 
        {
            nivel = rm_8_1;
            break;
        }
        case 12: 
        {
            nivel = rm_9_1;
            break;
        }
        case 13: 
        {
            nivel = rm_10_1;
            break;
        }
        case 14: 
        {
            nivel = rm_boss;
            break;
        }
        case 15: 
        {
            nivel = rm_boss2;
            break;
        }
        case 16: 
        {
            nivel = rm_boss3;
            break;
        }
        
        default: break;
    }
    return nivel;
}
else if (argument0 == 2)
{
   switch (global.fase_actual)
    {
        case 0:
        {
            texto = "0-1";
            break;
        }
        case 1: 
        {
            texto = "1-1";
            break;
        }
        case 2: 
        {
            texto = "1-2";
            break;
        }
        case 3: 
        {
            texto = "2-1";
            break;
        }
        case 4: 
        {
            texto = "2-2";
            break;
        }
        case 5: 
        {
            texto = "3-1";
            break;
        }
        case 6: 
        {
            texto = "3-2";
            break;
        }
        case 7: 
        {
            texto = "4-1";
            break;
        }
        case 8: 
        {
            texto = "5-1";
            break;
        }
        case 9: 
        {
            texto = "6-1";
            break;
        }
        case 10: 
        {
            texto = "7-1";
            break;
        }
        case 11: 
        {
            texto = "8-1";
            break;
        }
        case 12: 
        {
            texto = "9-1";
            break;
        }
        case 13: 
        {
            texto = "10-1";
            break;
        }
        case 14: 
        {
            texto = "Boss";
            break;
        }
        case 15: 
        {
            texto = "Boss2";
            break;
        }
        case 16: 
        {
            texto = "Boss3";
            break;
        }
        
        default: break;
    } 
    return texto;
}
