/// @description Configurando variáveis
// 16:9
res_width = 960;
res_height = 540;
res_scale = 1;
global.view_width = res_width / res_scale;
global.view_height = res_height / res_scale;
window_set_size(global.view_width * res_scale, global.view_height * res_scale);
surface_resize(application_surface, global.view_width * res_scale, global.view_height * res_scale);
