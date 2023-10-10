// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'cursos.dart';
import 'endereco.dart';

class Students {
  final int? id;
  final String? name;
  final int? age;
  final List<String>? nameCourses;
  final List<Courses>? courses;
  final Address? address;
  Students({
    this.id,
    this.name,
    this.age,
    this.nameCourses,
    this.courses,
    this.address,
  });

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'age': age,
      'nameCourses': nameCourses,
      'courses': courses?.map((e) => e.toMap()).toList(),
      'address': address?.toMap(),
    };
  }

  factory Students.fromMap(Map<String, dynamic> map) {
    return Students(
        id: map['id'] ?? 0,
        name: map['name'] ?? '',
        age: map['age'] as int,
        nameCourses: List<String>.from(map['nameCourses'] ?? <String>[]),
        courses:
            map['courses']?.map<Courses>((e) => Courses.fromMap(e)).toList() ??
                <Courses>[],
        address: Address.fromMap(map['address'] ?? <String, dynamic>{}));
  }

  factory Students.fromJson(String source) =>
      Students.fromMap(json.decode(source) as Map<String, dynamic>);
}
