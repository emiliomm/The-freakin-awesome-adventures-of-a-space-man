//scr_text("Text",speed,x,y,color_fondo,color_contorno,color_letras,desaparece,tiempo_desaparece,avatarsiono,avatar);
//desaparece = si se mantiene el texto siempre o cuando se acaba la cuenta atras desaparece

txt = instance_create(argument2,argument3,obj_text);
with(txt)
{
    padding = 16;
    maxlength = view_wview[view_current];
    text = argument0;
    spd = argument1;
    font = global.font2;

    color_fondo = argument4;
    color_contorno = argument5;
    color_letras = argument6;
    
    if argument7 == true
        alarm[0] = argument8;
    if argument9
        avatar = argument10;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text,font_size + (font_size/2), maxlength);
    text_height = string_height_ext(text,font_size + (font_size/2), maxlength);
    
    if argument9
    {
        boxwidth = text_width + (padding*2) + 32; //32 del avatar
        dibujaavatar = true;
    }
    else
        boxwidth = text_width + (padding*2);
    
    boxheight = text_height + (padding*2);
}
