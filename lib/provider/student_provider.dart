import 'package:flutter/material.dart';
import 'package:student_management_provider/model/student_model.dart';

class StudentProvider extends ChangeNotifier {
  bool _isGridView = true;
  bool get isGridView => _isGridView;

  void toggleView() {
    _isGridView = !_isGridView;
    notifyListeners();
  }

  Future<void> loadStudents() async {}

  Future<void> addStudent(Student student) async {
    try {
      await loadStudents();
    } catch (e) {
      // debugPrint("Error adding student: $e");
    }
  }

  Future<void> updateStudent(Student student) async {
    try {
      await loadStudents();
    } catch (e) {
      // debugPrint("Error updating student: $e");
    }
  }

  Future<void> deleteStudent(int id) async {
    try {
      await loadStudents();
    } catch (e) {
      // debugPrint("Error deleting student: $e");
    }
  }
}
