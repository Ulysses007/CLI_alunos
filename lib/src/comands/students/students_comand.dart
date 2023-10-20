
import 'package:args/command_runner.dart';
import '../../repositories/estudante_repository.dart';
import 'subcommands/find_all_comand.dart';
import 'subcommands/find_by_id_command.dart';

class StudentsComand extends Command {
  @override

  String get description => 'Students Operation';

  @override
  String get name => 'Students';


 StudentsComand(){
final StudentRepository = EstudanteRepository();
addSubcommand(FindAllComand(StudentRepository));
addSubcommand(FindByIdCommand(StudentRepository));

}
  
}