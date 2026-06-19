var _dist_to_player = point_distance(x,y,obj_player.x,obj_player.y)

if _dist_to_player <= 45
{
    if keyboard_check_pressed(ord("E"))
        instance_destroy();
}