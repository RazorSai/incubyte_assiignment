import 'package:dartz/dartz.dart';
import 'package:incubyte_assignment/core/error/failures.dart';
import 'package:incubyte_assignment/core/usecases/usecases.dart';
import 'package:incubyte_assignment/features/employees_list/domain/entities/employee_entity.dart';
import 'package:incubyte_assignment/features/employees_list/domain/repositories/employee_list_repository.dart';

class GetEmployeesListUseCase extends UseCase<List<EmployeeEntity>, NoParams>{

  final EmployeeListDomainRepository repository;

  GetEmployeesListUseCase({required this.repository});

  @override
  Future<Either<Failure, List<EmployeeEntity>>> call(NoParams params) async{
    // TODO: implement call
    return await repository.getEmployeesList();
  }

}