import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_assignment/features/employees_list/data/datasources/employees_local_data_source.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  sqfliteFfiInit();
  databaseFactory = databaseFactoryFfi;
  late Database db;
  late EmployeesLocalDataSource employeesLocalDataSource;

  setUp(() async {
    db = await databaseFactory.openDatabase(inMemoryDatabasePath);
    employeesLocalDataSource = EmployeesLocalDataSource(db);
    await employeesLocalDataSource.createTableIfNotExists();
  });
}
