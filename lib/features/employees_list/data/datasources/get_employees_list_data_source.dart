import 'package:incubyte_assignment/features/employees_list/data/models/employees_list_model.dart';

abstract class GetEmployeesListDataSource {

  Future<List<GetEmployeesListModel>> getEmployeesListDataSource();

}