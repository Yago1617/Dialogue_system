// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function warp(_val, _min, _max){
	if _val > _max return _min;
	else if _val < _min return _max;
	else return _val;
}

function draw_rectangle_center(_x, _y, _width, _height, _outline, _color, _alpha){
	var _old_color = draw_get_color();
	var _old_alpha = draw_get_alpha();
	
	draw_set_color(_color);
	draw_set_alpha(_alpha);
	
	draw_rectangle(_x - _width / 2,_y - _height / 2, _x + _width / 2 , _y + _height / 2, _outline);
	
	draw_set_color(_old_color);
	draw_set_alpha(_old_alpha);
}

function background_set_index(_arr){ // muda o background
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	
	layer_background_index(back_id, _arr[0]);
}

function chatterbox_update(){
	node = ChatterboxGetCurrent(chatterbox);
	text = ChatterboxGetContent(chatterbox, 0);
}