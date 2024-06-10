/// @description Desenhar sprites, texto e opções

draw_set_font(fnt_test);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);


var _margin_text = 120; // Margem horizontal do texto
var _margin_char = 200; // Margem horizontal do personagem

if IsChatterbox(chatterbox) and text != undefined
{
	var _me = (ChatterboxGetContentSpeaker(chatterbox, 0) == "Boy1");
	
	// Desenhando os personagemns
	draw_sprite_ext(spr_personagens, 0, _margin_char, room_height, size[_me], size[_me], 0, color[_me], 1);
	draw_sprite_ext(spr_personagens, 1, room_width - _margin_char, room_height, size[!_me], size[!_me], 0, color[!_me], 1);
	
	var _yy = room_height - (_margin_text / 2);
	
	// Desenhando um retângulo para as falas
	draw_rectangle_center(room_width / 2, _yy, room_width, _margin_text, false, c_black, 0.5);
	
	draw_set_halign(_me ? fa_left : fa_right);
	var _xx = _margin_text;  //_me ? _margin_text : room_width - _margin_text; n funciona no scribble
	scribble(text).draw(_xx,_yy, typist);
	//draw_text(_xx, _yy, text);
	
	
	// Se tiver alguma opção, desenha elas no centro da tela
	if ChatterboxGetOptionCount(chatterbox){
		draw_set_halign(fa_center);
		
		var _width = 400;
		var _height = 64;
		
		for (var i = 0; i < ChatterboxGetOptionCount(chatterbox); i++;){
			if ChatterboxGetOptionConditionBool(chatterbox, i){
				_xx = room_width / 2;
				_yy = (room_height / 6) * (i + 2);
				
				draw_rectangle_center(_xx, _yy, _width, _height, false, c_black, 0.5);
				
				var _icon = "";
				if (option_index == i) _icon = "> ";
				var _option = ChatterboxGetOption(chatterbox, i);
				
				draw_text(_xx, _yy, _icon + _option);
			}
		}
	}
}