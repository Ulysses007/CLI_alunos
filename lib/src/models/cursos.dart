// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Courses {
  int? id;
  String? name;
  bool? isStudent;
  Courses({
     this.id,
     this.name,
     this.isStudent,
  });




  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'isStudent': isStudent,
    };
  }

  factory Courses.fromMap(Map<String, dynamic> map) {
    return Courses(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      isStudent: map['isStudent']  ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory Courses.fromJson(String source) => Courses.fromMap(json.decode(source) as Map<String, dynamic>);
}
