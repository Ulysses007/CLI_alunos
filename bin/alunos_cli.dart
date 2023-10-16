// CLI é uma abreviação para comand line interface


import 'package:alunos_cli/src/comands/students/students_comand.dart';

import 'package:args/command_runner.dart';

void main(List<String> arguments) {
 
//  final argParser = ArgParser();
//   argParser.addFlag('data', abbr: 'd');
//   argParser.addOption('name', abbr: 'm');
//   argParser.addOption('template', abbr: 't');
//   final argResult = argParser.parse(arguments);

//   print('${argResult['data']}');
//   print('${argResult['name']}');
//   print('${argResult['template']}');

CommandRunner('ADF CLI', 'ADF')..addCommand(StudentsComand())..run(arguments);

}



// Classe que implementa o CLI
class ExemploCommand extends Command {

  // essa é a descrição do comando, posso chamar ela no terminal que o dart irá entender
  @override
  String get description => 'Exemplo comando';


ExemploCommand(){
argParser.addOption('template', abbr:  't', help: 'Template de criacao do projeto'); 
}


 // esse é o nome do comando, o que devo chamar para que o dart execute algum comando
 // Nesse caso ao rodar => .\bin\alunos_cli.dart Exemplo comando o dart irá executar o que tiver dentro da função run.  
  @override
  String get name => 'Exemplo';

  @override
  void run() {
    print('Executar');
  }
}
