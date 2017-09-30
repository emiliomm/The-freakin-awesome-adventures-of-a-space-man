///script que dice que ocurre al morir

//Borramos el checkpoint de la puerta
global.door = false;

//El heroe ha muerto, se sustituye por su animación
if (instance_exists(obj_heroe))
{
    with(obj_heroe)
        instance_change(obj_heroe_muerto,true);
}
//El heroe ha salido de la room
//o no manejamos el obj_heroe
else
{

    //Si estamos en la pantalla de muerte, volvemos al ultimo checkpoint activo
    if (room_get_name(room) == "rm_muerte")
    {
        if (global.checkpointR != 0) //Tenemos checkpoint activo
        {
            room_goto(global.checkpointR); //Vamos al checkpoint activo
        }
        else
        {
            room_goto(global.roomcamefrom); //Reiniciamos la habitación (Spawn inicial)
        }
    }
    else
    {
        global.roomcamefrom = room; //Guarda la sala de la muerte
        room_goto ( rm_muerte ); //Pantalla de muerte
    }
}
