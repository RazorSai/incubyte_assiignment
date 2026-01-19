import 'package:incubyte_assignment/features/employees_list/domain/entities/employee_entity.dart';

class GetEmployeesListModel extends EmployeeEntity {
  GetEmployeesListModel({
    required super.id,
    required super.employeeName,
    required super.country,
    required super.jobTitle,
    required super.employeeSalary,
  });

  factory GetEmployeesListModel.fromJson(Map<String, dynamic> json) {
    return GetEmployeesListModel(
      id: json['id'],
      employeeName: json['employee_name'],
      employeeSalary: json['employee_salary'],
      country: json['country'],
      jobTitle: json['job_title'],
    );
  }

  Map<String, dynamic> toJson(){
    return {
      'id': id,
      'employee_name': employeeName,
      'employee_salary': employeeSalary,
      'country': country,
      'job_title': jobTitle,
    };
  }

}
