import 'package:dartz/dartz.dart';
import 'package:incubyte_assignment/core/error/failures.dart';
import 'package:incubyte_assignment/features/employees_list/domain/entities/employee_entity.dart';

abstract class EmployeeListDomainRepository {

  Future<Either<Failure, List<EmployeeEntity>>> getEmployeesList();

}