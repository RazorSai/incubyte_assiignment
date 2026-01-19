import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_assignment/features/employees_list/data/datasources/employees_local_data_source.dart';
import 'package:incubyte_assignment/features/employees_list/data/models/employees_list_model.dart';
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

  test('fetch employees list from database if exists', () async{
    final result = await employeesLocalDataSource.getEmployeesListDataSource();
    expect(result, isA<List<GetEmployeesListModel>>());
  });

}
