if (y > 800) game_restart()
if (x < -32) game_restart()

if(!place_meeting(x, y + 1, obj_plataforma)) //n tocando plataforma
{
	
	velV = velV + grav;
	sprite_index = spr_jump
	if (keyboard_check_released(vk_space)) and (velV < 0)
	{
		velV = velV * 0.5;
	}
}
else //tocando plataforma
{
	sprite_index = spr_run
	if(keyboard_check_pressed(vk_space))
	{
		velV = jump;
	}
}

if(place_meeting(x, y + velV, obj_plataforma))
{
	while(!place_meeting(x, y + sign(velV), obj_plataforma))
	{
		y += sign(velV);
	}
	velV = 0;
}

if (place_meeting(x - global.velocidade, y, obj_plataforma))
{
	while(!place_meeting(x - sign(global.velocidade), y, obj_plataforma))
	{
		x -=sign(global.velocidade);
	}
	hspeed = global.velocidade;
}
else
{
	hspeed = 0;
	if(x != xstart) x += 1;
}





y += velV;