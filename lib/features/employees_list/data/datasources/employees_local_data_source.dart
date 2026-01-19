import 'package:incubyte_assignment/features/employees_list/data/datasources/get_employees_list_source.dart';
import 'package:incubyte_assignment/features/employees_list/data/models/employees_list_model.dart';
import 'package:sqflite/sqflite.dart';

class EmployeesLocalDataSource implements GetEmployeesListSource{

  final Database db;

  EmployeesLocalDataSource(this.db);

  static const EMPLOYEES_TABLE = 'employees';

  @override
  Future<List<GetEmployeesListModel>> getEmployeesListDataSource() {
    // TODO: implement getEmployeesListDataSource
    throw UnimplementedError();
  }

}