import 'package:dartz/dartz.dart';
import 'package:incubyte_assignment/core/error/failures.dart';
import 'package:incubyte_assignment/features/employees_list/domain/repositories/employee_list_repository.dart';

class GetEmployeesListUseCase {

  final EmployeeListDomainRepository repository;

  GetEmployeesListUseCase({required this.repository});

}