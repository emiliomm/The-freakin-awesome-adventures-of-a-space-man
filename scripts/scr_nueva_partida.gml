//scr_nueva_partida(ranura);

global.ranura = argument0;
global.puntuacion = 0;
obj_nv.nv = 0;
obj_progress.progreso = 0;
obj_progress.mundo0 = true;
obj_progress.mundo1 = false;
obj_progress.mundo2 = false;
obj_progress.mundo3 = false;
obj_progress.mundo4 = false;
obj_progress.mundo5 = false;
obj_progress.mundo6 = false;
obj_progress.mundo7 = false;
obj_progress.nivel01 = true;
obj_progress.nivel11 = false;
obj_progress.nivel12 = false;
obj_progress.nivel21 = false;
obj_progress.nivel22 = false;
obj_progress.nivel31 = false;
obj_progress.nivel32 = false;
obj_progress.nivel41 = false;
obj_progress.nivel51 = false;
obj_progress.nivel61 = false;
obj_progress.nivel71 = false;
obj_progress.nivel81 = false;
obj_progress.nivel91 = false;
obj_progress.nivel101 = false;
obj_progress.nivelboss = false;
obj_progress.nivelboss2 = false;
obj_progress.nivelboss3 = false;

scr_guardar_nivel(global.ranura);
room_goto(rm_intro);
