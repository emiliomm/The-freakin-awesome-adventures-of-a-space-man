ranura = argument0;
str = "";
if (argument0 == 1)
    str = "Save1.sav";
else if (argument0 == 2)
    str = "Save2.sav";
else if (argument0 == 3)
    str = "Save3.sav";

if (file_exists(str))
    file_delete(str);
ini_open(str);

var nivel = obj_nv.nv;
var progreso = obj_progress.progreso;
var mundo0 = obj_progress.mundo0;
var mundo1 = obj_progress.mundo1;
var mundo2 = obj_progress.mundo2;
var mundo3 = obj_progress.mundo3;
var mundo4 = obj_progress.mundo4;
var mundo5 = obj_progress.mundo5;
var mundo6 = obj_progress.mundo6;
var mundo7 = obj_progress.mundo7;
var nivel01 = obj_progress.nivel01;
var nivel11 = obj_progress.nivel11;
var nivel12 = obj_progress.nivel12;
var nivel21 = obj_progress.nivel21;
var nivel22 = obj_progress.nivel22;
var nivel31 = obj_progress.nivel31;
var nivel32 = obj_progress.nivel32;
var nivel41 = obj_progress.nivel41;
var nivel51 = obj_progress.nivel51;
var nivel61 = obj_progress.nivel61;
var nivel71 = obj_progress.nivel71;
var nivel81 = obj_progress.nivel81;
var nivel91 = obj_progress.nivel91;
var nivel101 = obj_progress.nivel101;
var nivelboss = obj_progress.nivelboss;
var nivelboss2 = obj_progress.nivelboss2;
var nivelboss3 = obj_progress.nivelboss3;
var puntuacion = global.puntuacion;

ini_write_real("Estado","Nivel",nivel);
ini_write_real("Estado","Progreso",progreso);
ini_write_real("Mundos","Mundo0",mundo0);
ini_write_real("Mundos","Mundo1",mundo1);
ini_write_real("Mundos","Mundo2",mundo2);
ini_write_real("Mundos","Mundo3",mundo3);
ini_write_real("Mundos","Mundo4",mundo4);
ini_write_real("Mundos","Mundo5",mundo5);
ini_write_real("Mundos","Mundo6",mundo6);
ini_write_real("Mundos","Mundo7",mundo7);
ini_write_real("Niveles","Nivel01",nivel01);
ini_write_real("Niveles","Nivel11",nivel11);
ini_write_real("Niveles","Nivel12",nivel12);
ini_write_real("Niveles","Nivel21",nivel21);
ini_write_real("Niveles","Nivel22",nivel22);
ini_write_real("Niveles","Nivel31",nivel31);
ini_write_real("Niveles","Nivel32",nivel32);
ini_write_real("Niveles","Nivel41",nivel41);
ini_write_real("Niveles","Nivel51",nivel51);
ini_write_real("Niveles","Nivel61",nivel61);
ini_write_real("Niveles","Nivel71",nivel71);
ini_write_real("Niveles","Nivel81",nivel81);
ini_write_real("Niveles","Nivel91",nivel91);
ini_write_real("Niveles","Nivel101",nivel101);
ini_write_real("Niveles","Nivelboss",nivelboss);
ini_write_real("Niveles","Nivelboss2",nivelboss2);
ini_write_real("Niveles","Nivelboss3",nivelboss3);
ini_write_real("Puntuacion","Puntuacion",puntuacion);

ini_close();
