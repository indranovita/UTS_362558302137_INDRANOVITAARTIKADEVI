import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';
import '../models/task.dart';

/// Titik akses data tugas.
///
/// Starter memakai memori agar aplikasi dapat langsung dijalankan. Lengkapi
/// TODO 2 dengan SharedPreferences dan JSON; jangan memindahkan akses storage
/// ke widget.
class TaskStorage {
  TaskStorage({this.loadDelay = const Duration(milliseconds: 450)});

  static List<Task> _memory = <Task>[];
  final Duration loadDelay;

  Future<List<Task>> load({bool simulateError = false}) async {
    await Future<void>.delayed(loadDelay);
    if (simulateError) {
      throw const FormatException('Simulasi data tersimpan yang rusak.');
    }

    // TODO 2a: baca String JSON dari SharedPreferences lalu ubah menjadi
    // List<Task> dengan Task.fromJson. JSON rusak dapat menghasilkan
    // FormatException agar UI menampilkan state error.
    final prefs = await SharedPreferences.getInstance();
    final storedJson = prefs.getString('practical_tasks');

    if (storedJson == null || storedJson.isEmpty) {
      return <Task>[];
    }

    try {
      final decoded = jsonDecode(storedJson);

      if (decoded is! List) {
        throw const FormatException('Format daftar tugas tidak valid.');
      }

      return decoded.map<Task>((item) {
        if (item is! Map) {
          throw const FormatException('Format data tugas tidak valid.');
        }

        return Task.fromJson(Map<String, dynamic>.from(item));
      }).toList();
    } on FormatException {
      rethrow;
    } catch (_) {
      throw const FormatException('Format data tugas tidak valid.');
    }
  }

  Future<void> save(List<Task> tasks) async {
    // TODO 2b: encode seluruh daftar sebagai JSON String dan tulis melalui
    // SharedPreferences. Periksa nilai bool yang dikembalikan setString.
    _memory = List<Task>.of(tasks);
  }

  Future<void> clear() async {
    // TODO 2c: hapus key daftar tugas dari SharedPreferences.
    _memory = <Task>[];
  }

  /// Hanya untuk mengisolasi pengujian lokal.
  static void resetMemoryForTest() => _memory = <Task>[];
}
