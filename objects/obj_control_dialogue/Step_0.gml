/// @description Navegação de texto e opções

var _count = ChatterboxGetOptionCount(chatterbox); // Pega o numero de opções que temos

if (ChatterboxIsWaiting(chatterbox) and keyboard_check_pressed(vk_space)) // Is Chatterbox waiting for user input
{
	ChatterboxContinue(chatterbox);
	chatterbox_update();
}
else if _count // O Chatterbox está apresentando as opções ao usuário
{
	var _key = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	
	// Move o option_index duas vezes se a proxima opção for inválida
	
	repeat(1 + (ChatterboxGetOptionConditionBool(chatterbox, warp(option_index + _key, 0, _count - 1)) == false))
	{
		option_index = warp(option_index + _key, 0, _count - 1)
	}
	
	if keyboard_check_pressed(vk_space){
		ChatterboxSelect(chatterbox, option_index);
		option_index = 0;
		
		chatterbox_update();
	}
}

if ChatterboxIsStopped(chatterbox){instance_destroy();}