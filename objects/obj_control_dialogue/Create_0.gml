/// @description Inicializar o chatterbox e configurar as variáveis

ChatterboxLoadFromFile("TesteDeNodes.yarn");			   // Carrega o arquivo YarnScript vindos dos Arquivos Incluídos
ChatterboxAddFunction("bg", background_set_index); // Adiciona a função para mudar o index do fundo
chatterbox = ChatterboxCreate();				   // Cria um chatterbox
ChatterboxJump(chatterbox, "Hall");			   // FLOW CONTROL Jump(): Vai para o "Start" do nó 
ChatterboxVariableSet("chave", false);
chatterbox_update();							   // Pega o nó atual e o texto do nó atual

option_index = 0;								   // Inicializa o index de opção

size = [0.7, 0.75]								   // Character sprite scale (small and large)
color = [c_ltgray, c_white]						   // Character sprite blend (dark and light)

typist = scribble_typist();
typist.in(1,0.5);
scribble_font_set_default("fnt_test");
