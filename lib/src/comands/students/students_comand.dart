
import 'package:args/command_runner.dart';
import '../../repositories/estudante_repository.dart';
import 'subcommands/find_all_comand.dart';

class StudentsComand extends Command {
  @override

  String get description => 'Students Operation';

  @override
  String get name => 'Students';


 StudentsComand(){
final StudentRepository = EstudanteRepository();
addSubcommand(FindAllComand(StudentRepository));

}
  
}