var _dist_to_player = (point_distance(x, y, obj_player.x, obj_player.y))
    
    if (_dist_to_player <= 45)
    {
        talking=true;
        
    }
else
{
    talking = false;
    //dialogue_open = false;
}
if (dialogue_open)
{
    //typewriter effect - show one character at a time
    if (!typing_complete)
    {
        typewriter_timer +=1;
        if(typewriter_timer >= typewriter_speed)
        {
            typewriter_timer = 0;
            char_to_show += 1;
            
            if (char_to_show >= string_length(dialogue_lines[line_index]))
                {
                char_to_show = string_length(dialogue_lines[line_index]);    
                typing_complete = true;
                }
        }
    }
if keyboard_check_pressed(ord("E"))  
{
    if (!typing_complete)
    {
        //skip ahead to show full line instantly
        char_to_show = string_length(dialogue_lines)
        typing_complete = true;
    }
    else {
    	line_index += 1;
        
        if (line_index >= array_length(dialogue_lines))
        {
            dialogue_open = false;
            global.in_dialogue = false;
            line_index = 0;
        }
        else {
        	char_to_show = 0;
            typing_complete = false;
        }
    }
}

}      
else 
{
    if (talking && keyboard_check_pressed(ord("E")))
    {
        dialogue_open = true;
        global.in_dialogue = true;
        line_index = 0;
        char_to_show = 0;
        typing_complete = false;
    }
}


   





//OLD PROTOTYPE CODE
// if (keyboard_check_pressed(ord("E")))
     //   {
       //     if (dialogue_open)
         //   {
           //     dialogue_open = false;
            //    global.in_dialogue = false;
            //}
            //else if (_dist_to_player <=45)
            //{
              //  dialogue_open = true;
               // global.in_dialogue = true;
            //}
        //}

