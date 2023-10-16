import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/estudantes.dart';

class EstudanteRepository {
  Future<List<Students>> findAll() async {
    final studentresult =
        await http.get(Uri.parse('http://localhost:8080/students'));

    if (studentresult.statusCode != 200) {
      throw Exception();
    }

    final responseData = jsonDecode(studentresult.body);

    if (responseData.isEmpty) {
      throw Exception('Produto não encontrado');
    }

    return responseData
        .map<Students>((student) => Students.fromMap(student))
        .toList;
  }

  Future<Students> findById(int id) async {
    final studentresult =
        await http.get(Uri.parse('http://localhost:8080/students/$id'));

    if (studentresult.statusCode != 200) {
      throw Exception();
    }

    if (studentresult.body == '{}') {
      throw Exception('Aluno não encontrado');
    }

    return Students.fromJson(studentresult.body);
  }

  Future<void> insert(Students student) async {
    final studentresult = await http.post(
        Uri.parse('http://localhost:8080/students/'),
        body: student.toJson(),
        headers: {
          'content-type': 'aplication/json',
        });

    if (studentresult.statusCode != 200) {
      throw Exception();
    }
  }


 Future<void> update(Students student) async{

 final studentresult = await http.put(
        Uri.parse('http://localhost:8080/students/${student.id}'),
        body: student.toJson(),
        headers: {
          'content-type': 'aplication/json',
        });

    if (studentresult.statusCode != 200) {
      throw Exception();
    }

}
 Future<void> deletById(int id) async{

 final studentresult = await http.delete(
        Uri.parse('http://localhost:8080/students/$id'));

    if (studentresult.statusCode != 200) {
      throw Exception();
    }
}
}
