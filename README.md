# MooodTrack 

## Descrição

O aplicativo MoodTrack foi desenvolvido com o objetivo de acompanhar o bem-estar emocional do usuário e auxiliar na realização de pequenas tarefas diárias.

O aplicativo combina três funcionalidades:
* Checklist Diário: Para realização de ações simples no dia a dia.
* Registro de acontecimentos do cotidiano: Para registrar pensamentos, reflexões e acontecimentos.
* Listagem dos registros: Para que o usuário possa acompanhar as emoções e os sentimentos ao longo dos dias.

O aplicativo foi feito para ser leve, intuitivo, simples de se usar e visualmente agradável para todas as faixas etárias, utilizando componentes simples e eficiente, o que garante uma experiência fluída.

## Descrição das classes, funções e métodos 

1.main.dart  
Responsável por iniciar o aplicativo

Funções:
main() - Inicia o app
MyApp() - Define o MaterialApp, tema e rotas.

2.login_screen.dart
Responsável pelo login e acesso ao aplicativo.

Funções:
login() - Chamado quando o botão de login for clicado.
Sua função é permitir o acesso do usuário ao aplicativo com a validação das informações armazenadas no SharedPreferences.

mostrarMensagem() - Chamado quando for verificado se os campos coincidem com o que é pedido, após clicar no botão de cadastrar.
Sua função é a exibição de uma mensagem no canto inferior da tela.

build() - Exibir a interface da tela.  
Conta com componentes como TextField, ElevatedButton, Icon...


3.register_screen.dart  
Responsável pelo cadastro do usuário no aplicativo.

Fuunções:
cadastrar() - Chamado quando o usuário clica no botão cadastrar.
Sua função é validação dos campos e armazenamento local no SharedPreferences.

mostrarMensagem() - Chamado quando for verificado se os campos coincidem com o que é pedido, após clicar no botão de login.  
Sua função é a exibição de uma mensagem no canto inferior da tela.

build() - Exibir a interface da tela .  
Conta com componentes como TextField, ElevatedButton, Icon...


4.home_screen.dart
Tela inicial do aplicativo.

Funções:
build() - Exibe a interface com os widgets.  
Conta com AppBar, Text, Buttons...

5.diario_screen.dart  
Tela responsável pelo registro e pela listagem dos registros feito.

Funções:
buildMoodIcon(emoji) - Seleciona um emoji quando este for clicado.
Responsável por gerenciar os ícones de humor disponiveis.

addEntry() - Chamado quando o usuário clica no botão salvar.
Método responsável por salvar os registros feitos.

build() - Exibe a interface da tela com os registros, campo de texto, emojis...
Conta com componentes como Icons, TextField, Buttons...

6.tips_screen.dart  
Tela responsável pela lista de ações.

Funções:  
build() - Constrói e exibe a interface da tela com ListView.builder.
Conta com componentes como AppBar, Buttons, Text...

## Como executar o aplicativo

1. Instale o Flutter(3.19 ou superior)
2. Abra o projeto no VSCode ou no Android Studio.
3. No terminal, execute:
´´´flutter pub get
´´´
5. Conecte um celular Android ou abra um emulador
6. Rode [pip](flutter run)

## Tecnologias utilizadas e justificativas

- Flutter
Possui interface nativa e intuitiva.

- Dart
Linguagem moderna e simples.    
Widgets performáticos.

- Desing
Interface visual agradável e padronizada com tons claros.    
Melhor usabilidade do usuário.
   
## Gerenciamento de Memória  
O MoodTrack utiliza algumas práticas para garantir eficiência e evitar desperdício de recursos durante a execução do aplicativo. As práticas são:

**Uso adequado de Stateful e Stateless widgets**  
Os widgets foram estruturados de forma que apenas telas que necessitam de atualzações dinâmicas utilizem StatefulWidget, enquanto as telas estáticas utilizam de StatelessWidget, evitando reconstruções de telas desnecessárias e reduzindo o uso de memória.

**Renderização eficiente com ListView.builder**  
Listas, como utilizadas pelo checklist e o diário de humor, usam ListView.builder, que renderiza apenas os itens visíveis na tela, evitando o carregamento de listas inteiras na memória ao mesmo tempo.
 
**Minimização de rebuilds**  
O aplicativo evita atualizações desnecessárias na interface por meio de organização adequada de estado e divisão lógica de widgets.

