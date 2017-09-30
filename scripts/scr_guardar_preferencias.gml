if (file_exists("Preferencias.sav"))
    file_delete("Preferencias.sav");
ini_open("Preferencias.sav");
var SavedFullscreen = global.fullscreen;
var SavedSonido = global.sound;
ini_write_real("Preferencias","fullscreen",SavedFullscreen);
ini_write_real("Preferencias","sound",SavedSonido);
ini_close();
