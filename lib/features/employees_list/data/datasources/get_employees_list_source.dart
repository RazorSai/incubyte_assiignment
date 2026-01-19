import 'package:incubyte_assignment/features/employees_list/data/models/employees_list_model.dart';

abstract class GetEmployeesListSource {

  Future<List<GetEmployeesListModel>> getEmployeesListDataSource();

}