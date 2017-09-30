ranura = argument0;
str = "";
if (argument0 == 1)
    str = "Save1.sav";
else if (argument0 == 2)
    str = "Save2.sav";
else if (argument0 == 3)
    str = "Save3.sav";

if (file_exists(str))
{
    ini_open(str);
    
    var Nivel = ini_read_real("Estado","Nivel",0);
    var Progreso = ini_read_real("Estado","Progreso",0);
    var mundo0 = ini_read_real("Mundos","Mundo0",false);
    var mundo1 = ini_read_real("Mundos","Mundo1",false);
    var mundo2 = ini_read_real("Mundos","Mundo2",false);
    var mundo3 = ini_read_real("Mundos","Mundo3",false);
    var mundo4 = ini_read_real("Mundos","Mundo4",false);
    var mundo5 = ini_read_real("Mundos","Mundo5",false);
    var mundo6 = ini_read_real("Mundos","Mundo6",false);
    var mundo7 = ini_read_real("Mundos","Mundo7",false);
    var nivel01 = ini_read_real("Niveles","Nivel01",true);
    var nivel11 = ini_read_real("Niveles","Nivel11",false);
    var nivel12 = ini_read_real("Niveles","Nivel12",false);
    var nivel21 = ini_read_real("Niveles","Nivel21",false);
    var nivel22 = ini_read_real("Niveles","Nivel22",false);
    var nivel31 = ini_read_real("Niveles","Nivel31",false);
    var nivel32 = ini_read_real("Niveles","Nivel32",false);
    var nivel41 = ini_read_real("Niveles","Nivel41",false);
    var nivel51 = ini_read_real("Niveles","Nivel51",false);
    var nivel61 = ini_read_real("Niveles","Nivel61",false);
    var nivel71 = ini_read_real("Niveles","Nivel71",false);
    var nivel81 = ini_read_real("Niveles","Nivel81",false);
    var nivel91 = ini_read_real("Niveles","Nivel91",false);
    var nivel101 = ini_read_real("Niveles","Nivel101",false);
    var nivelboss = ini_read_real("Niveles","Nivelboss",false);
    var nivelboss2 = ini_read_real("Niveles","Nivelboss2",false);
    var nivelboss3 = ini_read_real("Niveles","Nivelboss3",false);
    
    var LoadedPuntuacion = ini_read_real("Puntuacion","Puntuacion",0);
    
    ini_close();
    
    obj_nv.nv = Nivel;
    
    obj_progress.progreso = Progreso;
    obj_progress.mundo0 = mundo0;
    obj_progress.mundo1 = mundo1;
    obj_progress.mundo2 = mundo2;
    obj_progress.mundo3 = mundo3;
    obj_progress.mundo4 = mundo4;
    obj_progress.mundo5 = mundo5;
    obj_progress.mundo6 = mundo6;
    obj_progress.mundo7 = mundo7;
    
    obj_progress.nivel01 = nivel01;
    obj_progress.nivel11 = nivel11;
    obj_progress.nivel12 = nivel12;
    obj_progress.nivel21 = nivel21;
    obj_progress.nivel22 = nivel22;
    obj_progress.nivel31 = nivel31;
    obj_progress.nivel32 = nivel32;
    obj_progress.nivel41 = nivel41;
    obj_progress.nivel51 = nivel51;
    obj_progress.nivel61 = nivel61;
    obj_progress.nivel71 = nivel71;
    obj_progress.nivel81 = nivel81;
    obj_progress.nivel91 = nivel91;
    obj_progress.nivel101 = nivel101;
    obj_progress.nivelboss = nivelboss;
    obj_progress.nivelboss2 = nivelboss2;
    obj_progress.nivelboss3 = nivelboss3;
    
    global.puntuacion = LoadedPuntuacion;
    
    room_goto(rm_mapamundi);
}
