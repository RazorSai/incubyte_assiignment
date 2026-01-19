import 'package:incubyte_assignment/features/employees_list/data/datasources/get_employees_list_source.dart';
import 'package:incubyte_assignment/features/employees_list/data/models/employees_list_model.dart';
import 'package:sqflite/sqflite.dart';

class EmployeesLocalDataSource implements GetEmployeesListSource{

  final Database db;

  EmployeesLocalDataSource(this.db);

  static const EMPLOYEES_TABLE = 'employees';

  Future<void> createTableIfNotExists() async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS $EMPLOYEES_TABLE (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        employee_name TEXT,
        employee_salary INTEGER,
        country TEXT,
        job_title TEXT
      )
    ''');
  }

  @override
  Future<List<GetEmployeesListModel>> getEmployeesListDataSource() async{
    // TODO: implement getEmployeesListDataSource
    throw UnimplementedError();
  }

}