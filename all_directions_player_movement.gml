function all_directions_player_movement(_key_pressed, _collision_limit) 
{
    switch(_key_pressed) 
    {
        case vk_up:
            if (keyboard_check(vk_right)) 
            {
                if(!place_meeting(x + _collision_limit, y - _collision_limit, obj_solid))
                {
                    x += spd * sqrt(0.5); 
                    y -= spd * sqrt(0.5);
                }
                image_angle = 45;
            }
            else if (keyboard_check(vk_left)) 
            {
                if(!place_meeting(x - _collision_limit, y - _collision_limit, obj_solid))
                {
                    x -= spd * sqrt(0.5); 
                    y -= spd * sqrt(0.5);
                }
                image_angle = 135;
            }
            else 
            {
                if(!place_meeting(x, y - _collision_limit, obj_solid))
                {
                    y -= spd;
                }
                image_angle = 90;
            }
            break;

        case vk_down:
            if (keyboard_check(vk_right)) 
            {
                if(!place_meeting(x + _collision_limit, y + _collision_limit, obj_solid))
                {
                    x += spd * sqrt(0.5); 
                    y += spd * sqrt(0.5);
                }
                image_angle = 315;
            }
            else if (keyboard_check(vk_left)) 
            {
                if(!place_meeting(x - _collision_limit, y + _collision_limit, obj_solid))
                {
                    x -= spd * sqrt(0.5); 
                    y += spd * sqrt(0.5);
                }
                image_angle = 225;
            }
            else 
            {
                if(!place_meeting(x, y + _collision_limit, obj_solid))
                {
                    y += spd;
                }
                image_angle = 270;
            }
            break;

        case vk_right:
            if (keyboard_check(vk_up)) 
            {
                if(!place_meeting(x + _collision_limit, y - _collision_limit, obj_solid))
                {
                    x += spd * sqrt(0.5); 
                    y -= spd * sqrt(0.5);
                }
                image_angle = 45;
            }
            else if (keyboard_check(vk_down)) 
            {
                if(!place_meeting(x + _collision_limit, y + _collision_limit, obj_solid))
                {
                    x += spd * sqrt(0.5); 
                    y += spd * sqrt(0.5);
                }
                image_angle = 315;
            }
            else 
            {
                if(!place_meeting(x + _collision_limit, y, obj_solid))
                {
                    x += spd;
                }
                image_angle = 0;
            }
            break;

        case vk_left:
            if (keyboard_check(vk_up)) 
            {
                if(!place_meeting(x - _collision_limit, y - _collision_limit, obj_solid))
                {
                    x -= spd * sqrt(0.5); 
                    y -= spd * sqrt(0.5);
                }
                image_angle = 135;
            }
            else if (keyboard_check(vk_down)) 
            {
                if(!place_meeting(x - _collision_limit, y + _collision_limit, obj_solid))
                {
                    x -= spd * sqrt(0.5); 
                    y += spd * sqrt(0.5);
                }
                image_angle = 225;
            }
            else 
            {
                if(!place_meeting(x - _collision_limit, y, obj_solid))
                {
                    x -= spd;
                }
                image_angle = 180;
            }
            break;
    }
}
