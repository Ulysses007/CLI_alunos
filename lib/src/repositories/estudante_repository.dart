
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/estudantes.dart';

class EstudanteRepository {

Future<List<Students>> findAll() async{
final studentresult =
        await http.get(Uri.parse('http://localhost:8080/students'));

    if (studentresult.statusCode != 200) {
      throw Exception();
    }

    final responseData = jsonDecode(studentresult.body);

    if (responseData.isEmpty) {
      throw Exception('Produto não incontrado');
    }

    return responseData.map<Students>((student)=> Students.fromMap(student)).toList;

}
// Future<Students> findById(){}
// Future<void>> insert(Students student){}
// Future<void>> update(Students student){}
// Future<void>> deletById(int id){}
  
}