// Feather disable all
//Bidirectional lookup - stores name:index as well as index:name
function __scribble_get_effects_map()
{
    static _map = ds_map_create();
    return _map;
}
