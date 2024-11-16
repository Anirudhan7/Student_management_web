
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:student_management_web/model/student_model.dart';

Future<void> initializeHive() async {
  final directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(StudentModelAdapter());
  await Hive.openBox<StudentModel>('students');
}

Future<void> addStudent(StudentModel student) async {
  final studentBox = Hive.box<StudentModel>('students');
  await studentBox.put(student.id, student);
}

Future<List<StudentModel>> getAllStudents() async {
  final studentBox = Hive.box<StudentModel>('students');
  return studentBox.values.toList();
}

Future<void> deleteStudent(int id) async {
  final studentBox = Hive.box<StudentModel>('students');
  await studentBox.delete(id);
}

Future<void> updateStudent(StudentModel updatedStudent) async {
  final studentBox = Hive.box<StudentModel>('students');
  await studentBox.put(updatedStudent.id, updatedStudent);
}