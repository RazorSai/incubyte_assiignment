import 'package:equatable/equatable.dart';

class EmployeeEntity extends Equatable {

  int id;
  String employeeName, country, jobTitle;
  num employeeSalary;

  EmployeeEntity({
    required this.id,
    required this.employeeName,
    required this.country,
    required this.jobTitle,
    required this.employeeSalary,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    id,
    employeeName,
    country,
    jobTitle,
    employeeSalary
  ];

}