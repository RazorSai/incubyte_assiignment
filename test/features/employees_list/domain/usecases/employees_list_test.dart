import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_assignment/core/usecases/usecases.dart';
import 'package:incubyte_assignment/features/employees_list/domain/entities/employee_entity.dart';
import 'package:incubyte_assignment/features/employees_list/domain/repositories/employee_list_repository.dart';
import 'package:incubyte_assignment/features/employees_list/domain/usecases/get_employees_list_use_case.dart';
import 'package:mocktail/mocktail.dart';

class MockEmployeesRepository extends Mock implements EmployeeListDomainRepository {

}

void main(){
  late GetEmployeesListUseCase employeesListUseCase;
  late MockEmployeesRepository mockEmployeesRepository;
  NoParams params = NoParams();

  List<EmployeeEntity> employeesList = [
    EmployeeEntity(
      id: 1,
      employeeName: "Tiger Nixon",
      employeeSalary: 320800,
      country: "India",
      jobTitle: "Senior Software Engineer"
    ),
  ];

  setUp((){
    mockEmployeesRepository = MockEmployeesRepository();
    employeesListUseCase = GetEmployeesListUseCase(repository: mockEmployeesRepository);
  });

  test(
    'to check if list of employees is fetched from the repository', () async{
      when(() => mockEmployeesRepository.getEmployeesList()).thenAnswer((_) async => Right(employeesList));
      final result = await employeesListUseCase(params);
      expect(result, Right(employeesList));
      verify(() => mockEmployeesRepository.getEmployeesList()).called(1);
      verifyNoMoreInteractions(mockEmployeesRepository);
  });

}
