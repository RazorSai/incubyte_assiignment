import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_assignment/features/employees_list/domain/entities/employee_entity.dart';
import 'package:mocktail/mocktail.dart';

class MockEmployeesRepository extends Mock implements EmployeeEntity {

}

void main(){
  late GetEmployeesListUseCase employeesListUseCase;
  late MockEmployeesRepository mockEmployeesRepository;

  setUp((){
    mockEmployeesRepository = MockEmployeesRepository();
    employeesListUseCase = GetEmployeesListUseCase(mockEmployeesRepository);
  });

}
