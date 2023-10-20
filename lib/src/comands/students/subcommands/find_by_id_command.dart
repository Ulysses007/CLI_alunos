import 'package:args/command_runner.dart';

import '../../../repositories/estudante_repository.dart';

class FindByIdCommand extends Command {
  final EstudanteRepository studentRepository;

  FindByIdCommand(this.studentRepository) {
    argParser.addOption('id', help: 'Student Id', abbr: 'i');
  }

  @override
  String get description => 'FInd Student by id';

  @override
  String get name => 'byId';

  @override
  Future<void> run() async {
    if (argResults?['id'] == null) {
      print('Favor, informe o ID');
      return;
    }

    final id = int.parse(argResults?['id'] ?? 0);

    print('Aguarde Buscando os Alunos...');

    final student = await studentRepository.findById(id);

print('Aluno ${student.name}');
print('Aluno ${student.age ?? 'Não informado'}');
print('Aluno ${student.name}');

student.nameCourses?.forEach(print);

print('Endereço');

print('${student.address?.street}  ${student.address?.zipCode}');
  
  }
}
