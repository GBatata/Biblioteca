if (!place_meeting(x, y, obj_plataforma))
{
	var plat = instance_create_layer(x + irandom_range(1, 4) * 32, y,"instances", obj_plataforma);
	plat.image_yscale= choose(1, 1.5, 2, 2.5, 3);
	plat.image_xscale= choose(1, 1.5, 2);
}