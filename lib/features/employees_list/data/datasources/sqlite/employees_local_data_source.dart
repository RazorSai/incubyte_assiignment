import 'package:sqflite/sqflite.dart';

class EmployeesLocalDataSource {

  final Database db;

  EmployeesLocalDataSource( this.db);

  static const EMPLOYEES_TABLE = 'employees';

  Future<void> createTableIfNotExists() async{

  }

}