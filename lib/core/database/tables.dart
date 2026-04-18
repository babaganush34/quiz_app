import 'package:drift/drift.dart';

class HistoryTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get category => text()();
  IntColumn get score => integer()();
  IntColumn get total => integer()();
  TextColumn get difficulty => text()();
  DateTimeColumn get date => dateTime()();
}

class SettingsTable extends Table {
  IntColumn get id => integer().withDefault(const Constant(1))();
  BoolColumn get isDarkMode => boolean().withDefault(const Constant(false))();
  TextColumn get defaultDifficulty =>
      text().withDefault(const Constant('meduim'))();

  @override
  Set<Column> get primaryKey => {id};
}
