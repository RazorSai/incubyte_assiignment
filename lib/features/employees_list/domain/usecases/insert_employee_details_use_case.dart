import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:incubyte_assignment/core/error/failures.dart';
import 'package:incubyte_assignment/core/usecases/usecases.dart';
import 'package:incubyte_assignment/features/employees_list/domain/entities/employee_entity.dart';
import 'package:incubyte_assignment/features/employees_list/domain/repositories/employee_list_repository.dart';

class InsertEmployeeDetailsUseCase extends UseCase<EmployeeEntity, Params>{

  final EmployeeListDomainRepository repository;

  InsertEmployeeDetailsUseCase({required this.repository});

  @override
  Future<Either<Failure, EmployeeEntity>> call(Params params) {
    // TODO: implement call
    throw UnimplementedError();
  }

}

class Params extends Equatable{
  final EmployeeEntity employeeEntity;
  Params({required this.employeeEntity});

  @override
  // TODO: implement props
  List<Object?> get props => [employeeEntity];
}
