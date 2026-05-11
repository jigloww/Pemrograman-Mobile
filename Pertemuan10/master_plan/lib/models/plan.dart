import './task.dart';

class Plan {
  final String name;
  final List<Task> tasks;

  // Menghitung jumlah task yang sudah selesai
  int get completedCount =>
      tasks.where((task) => task.complete).length;

  // Menampilkan pesan progress penyelesaian task
  String get completenessMessage =>
      '$completedCount out of ${tasks.length} tasks';

  const Plan({
    this.name = '',
    this.tasks = const [],
  });
}