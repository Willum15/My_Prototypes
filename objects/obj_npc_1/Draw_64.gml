//show_debug_message("GUI size: " + string(display_get_gui_width()) + " x " + string(display_get_gui_height()));


//dialogue box at bottom of screen
if (dialogue_open)
{
    //if (dialogue_open = true)
    
   var _gui_w = display_get_gui_width(); //864
   var _gui_h = display_get_gui_height(); //648
    
    var _box_w = 600;
    var _box_h = 150;
    var _box_x = (_gui_w/2) - (_box_w/2);
    var _box_y = _gui_h - _box_h -40; //40px from bottom
        
    draw_sprite_stretched(spr_dialogue_box, 0, _box_x, _box_y, _box_w, _box_h);
    
    draw_set_colour(c_white);
        
    var _full_text = dialogue_lines[line_index];
    var _visible_text = string_copy(_full_text,1,char_to_show);        
    draw_text_ext(_box_x + 20, _box_y +20, _visible_text, 20, _box_w - 40);
         
}