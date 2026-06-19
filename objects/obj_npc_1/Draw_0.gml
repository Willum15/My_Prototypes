draw_self();

var _dist_to_player = (point_distance(x, y, obj_player.x, obj_player.y))
    
    if (_dist_to_player <=45)
    {
    draw_sprite (spr_dialogue_confirm, 1, x -5, y -30);
        } 

//OLD PROTOTYPE CODE
//if (dialogue_open = true)
//{
   // draw_text(x-50, y-50, "Hello there");
//}
