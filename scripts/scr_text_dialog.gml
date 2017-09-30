//scr_text(texto,speed,color_fondo,color_contorno,color_letras,avatarsiono,avatar);
//desaparece = si se mantiene el texto siempre o cuando se acaba la cuenta atras desaparece

    with(obj_text)
        instance_destroy();
        
    txt = instance_create(view_xview[view_current]+20,view_yview[view_current]+80,obj_text);
    with(txt)
    {
        padding = 16;
        maxlength = view_wview[view_current];
        text = argument0;
        spd = argument1;
        font = global.font2;
    
        color_fondo = argument2;
        color_contorno = argument3;
        color_letras = argument4;
        
        if argument5
        {
            avatar = argument6;
        }
        
        text_length = string_length(text);
        font_size = font_get_size(font);
        
        draw_set_font(font);
        
        text_width = string_width_ext(text,font_size + (font_size/2), maxlength);
        text_height = string_height_ext(text,font_size + (font_size/2), maxlength);
        
        if argument5
        {
            boxwidth = 600; //32 del avatar
            dibujaavatar = true;
        }
        else
            boxwidth = text_width + (padding*2);
        
        boxheight = text_height + (padding*2);
        
        dibujaflecha = true;
    }
