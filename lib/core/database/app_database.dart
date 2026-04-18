import 'dart:io';
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qwiz_app/core/database/tables.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

@DriftDatabase(tables: [HistoryTable, SettingsTable])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
  Future<List<HistoryTableData>> getAllHistory() => select(historyTable).get();

  Future<int> insertHistory(HistoryTableCompanion entry) =>
      into(historyTable).insert(entry);

  Future<int> deleteEntryFromHistory(HistoryTableCompanion entry) =>
      delete(historyTable).delete(entry);

  Future<int> deleteAllHistory() => delete(historyTable).go();

  Future<SettingsTableData> getSettings() =>
      (select(settingsTable)..where((t) => t.id.equals(1))).getSingle();

  Future<void> updateSettings(SettingsTableCompanion entry) =>
      into(settingsTable).insertOnConflictUpdate(entry);
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'quiz_db.sqlite'));
    return NativeDatabase(file);
  });
}
