import 'package:dartz/dartz.dart';
import 'package:incubyte_assignment/core/error/failures.dart';
import 'package:incubyte_assignment/features/employees_list/data/datasources/get_employees_list_source.dart';
import 'package:incubyte_assignment/features/employees_list/domain/entities/employee_entity.dart';
import 'package:incubyte_assignment/features/employees_list/domain/repositories/employee_list_repository.dart';

class GetEmployeesRepositoryImpl implements EmployeeListDomainRepository{
  final GetEmployeesListSource localDataSource;

  GetEmployeesRepositoryImpl({required this.localDataSource});

  @override
  Future<Either<Failure, List<EmployeeEntity>>> getEmployeesList() async{
    return Right(await localDataSource.getEmployeesListDataSource());
  }

}