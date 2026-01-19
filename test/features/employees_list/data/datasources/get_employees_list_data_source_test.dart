import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_assignment/core/datasources/employees_local_data_source.dart';
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
    await db.insert('employees',  {
      'employee_name': 'Alice',
      'country': 'USA',
      'job_title': 'Developer',
      'employee_salary': 75000,
    });
    await db.insert('employees',  {
      'employee_name': 'Sai',
      'country': 'India',
      'job_title': 'Developer',
      'employee_salary': 2200000,
    });
  });

  tearDown((){
    db.close();
  });

  test('fetch employees list from database if exists', () async{
    final result = await employeesLocalDataSource.getEmployeesListDataSource();
    expect(result, isA<List<GetEmployeesListModel>>());
    expect(result.length, 2);
    expect(result[0].employeeName, 'Alice');
    expect(result[1].employeeName, 'Sai');
  });

}
