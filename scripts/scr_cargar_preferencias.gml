if (file_exists("Preferencias.sav"))
{
    ini_open("Preferencias.sav");
    var SavedFullscreen = ini_read_real("Preferencias","fullscreen",1);
    var SavedSonido = ini_read_real("Preferencias","sound",1); //Seción, subseccion, nivel por defecto
    ini_close();
    global.sound = SavedSonido;
    global.fullscreen = SavedFullscreen;
    scr_sound(global.sound);
    scr_screen(global.fullscreen);
}
