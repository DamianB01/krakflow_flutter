import 'task_api_service.dart';
import 'task_local_database.dart';
import '../models/task.dart';

class TaskSyncService {
  static Future<void> loadInitialDataIfNeeded() async {
    if (!TaskLocalDatabase.isEmpty()) {
      print("Hive ma dane: używamy danych lokalnych.");
      return;
    }
    print("Hive jest pusty: pobieramy dane z API...");
    try {
      final List<Task> apiTasks = await TaskApiService.fetchTasks();
      if (apiTasks.isNotEmpty) {
        await TaskLocalDatabase.saveTasks(apiTasks);
        print("Zsynchronizowano ${apiTasks.length} zadań z API do Hive.");
      }
    } catch (e) {
      print("Błąd synchronizacji: $e");
      rethrow;
    }
  }
}