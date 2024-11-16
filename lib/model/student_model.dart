
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'student_model.g.dart';
@HiveType(typeId: 0) // You can choose any unique type ID
class StudentModel {
  @HiveField(0)
  int? id;

  @HiveField(1)
  final String rollno;

  @HiveField(2)
  final String name;

  @HiveField(3)
  final String department;

  @HiveField(4)
  final String? phoneno;

  @HiveField(5)
  final String? imageurl;

  StudentModel({
    this.id,
    required this.rollno,
    required this.name,
    required this.department,
    required this.phoneno,
    this.imageurl,
  });

  static fromMap(Map<String, dynamic> student) {
    return StudentModel(
      id: student['id'],
      rollno: student['rollno'],
      name: student['name'],
      department: student['department'],
      phoneno: student['phoneno'],
      imageurl: student['imageurl'],
    );
  }
}