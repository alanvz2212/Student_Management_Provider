import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_management_provider/provider/student_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<StudentProvider>(context, listen: false).loadStudents();
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Management"),
        actions: [
          Consumer<StudentProvider>(
            builder: (context, provider, child) {
              return IconButton(
                icon: Icon(provider.isGridView ? Icons.grid_view : Icons.list),
                onPressed: provider.toggleView,
              );
            },
          ),
        ],
      ),
    );
  }
}
