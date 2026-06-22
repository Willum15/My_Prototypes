var has_key = false;
var Yellow_Key_Door;

//movement
right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

if (global.in_dialogue)
{
    exit;
}
//pause
if instance_exists(obj_pauser)
{
    xspd = 0;
    yspd = 0;
}

if instance_exists(obj_key_item)
{
    has_key = false;
    //instance_deactivate_object(obj_warp_block);
}
else 
{
    has_key = true;
    //instance_activate_object(obj_warp_block);
}

if has_key = true && keyboard_check_pressed(vk_space)
{
    instance_create_layer(obj_player.x +10,obj_player.y, "Instances", obj_key_item);
}


//set sprite
mask_index = spr_player_down;
if yspd == 0
{
if xspd > 0 {face = RIGHT};
if xspd < 0 {face = LEFT};
}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};

    
if xspd == 0
{    
if yspd > 0 {face = DOWN};
if yspd < 0 {face = UP};  
}
if yspd > 0 && face == UP{face = DOWN};
if yspd < 0 && face == DOWN{face = UP};
sprite_index = sprite[face]

//collisions
if place_meeting(x + xspd, y, obj_wall)
{
    xspd = 0;
}

if place_meeting(x, y + yspd, obj_wall)
{
   yspd = 0;
}


x +=xspd;
y+=yspd;



//animate
if xspd == 0 && yspd == 0
{
    image_index = 0;
}

