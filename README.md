Documentação 

Descrição
O aplicativo MoodTrack foi desenvolvido com o objetivo de acompanhar o bem-estar emocional do usuário e auxiliar na realização de pequenas tarefas diárias.

O aplicativo combina três funcionalidades:
- Checklist Diário: Para realização de ações simples
- Registro de acontecimentos do cotidiano: Para registrar pensamentos, reflexões e acontecimentos.
- Listagem dos registros: Para que o usuário possa acompanhar as emoções e os sentimentos ao longo dos dias.

O aplicativo foi feito para ser leve, intuitivo, simples de se usar e visualmente agradável para todas as faixas etárias, utilizando componentes simples e eficiente, o que garante uma experiência fluída.

Descrição das classes, funções e métodos 

1. main.dart
Responsável por iniciar o aplicativo

Funções:
main() - Inicia o app
MyApp() - Define o MaterialApp, tema e rotas.

2. login_screen
Responsável pelo login e acesso ao aplicativo

Funções:


3. home_screen
Tela inicial do aplicativo

Funções:
build() - Exibe a interface com os widgets

4. diario_humor_screen.dart
Tela responsável pela registro e pela listagem registros feito

Funções:
selectEmoji(emoji) - Seleciona um emoji
saveEntry() - Registra o humor do dia
build() - Exibe a interface da tela com os registros, campo de texto, emojis...

6. checklist_screen.dart
Tela responsável pela lista de ações

Funções:
addTask() - Adiciona uma ação 
toggleTask() - Marca/desmarca uma ação como realizada
removeTask() - Deleta a ação selecionada
build() - Exibe a interface da tela com ListView.builder.

Como executar o aplicativo

1. Instale o Flutter(3.19 ou superior)
2. Abra o projeto no VSCode ou no Android Studio.
3. No terminal, execute:
   flutter pub get
4. Conecte um celular Android ou abra um emulador
5. Rode
   flutter run


Tecnologias utilizadas e justificativas

1. Flutte
Possui interface nativa e intuitiva

2. Dart
Linguagem moderna e simples
Widgets performáticos

