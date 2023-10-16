import 'dart:io';

import 'package:args/command_runner.dart';

import '../../../repositories/estudante_repository.dart';

class FindAllComand extends Command {
  final EstudanteRepository repository;

  FindAllComand(this.repository);

  @override
  String get description => 'Find all students';

  @override
  String get name => 'findAll';

  @override
  void run() async {
    print('Aguarde Buscando os Alunos...');

    final students = await repository.findAll();

    print('Apresentar tambem os cursos dos alunos ? (S/N)');

    final showcoures = stdin.readLineSync();

    print('----------------------------------');
    print('Alunos');
    print('----------------------------------');

    for (var student in students) {
      if (showcoures?.toLowerCase() == 's') {
        print('${student.id} --- ${student.name} ${student.nameCourses}');
      } else {
        print('${student.id} --- ${student.name}');
      }
    }
  }
}
