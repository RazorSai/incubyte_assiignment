import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_assignment/features/employees_list/domain/entities/employee_entity.dart';
import 'package:incubyte_assignment/features/employees_list/domain/repositories/employee_list_repository.dart';
import 'package:incubyte_assignment/features/employees_list/domain/usecases/insert_employee_details_use_case.dart';
import 'package:mocktail/mocktail.dart';

class MockInsertEmployeeDetailsRepository extends Mock implements EmployeeListDomainRepository{

}

void main(){

  late InsertEmployeeDetailsUseCase insertEmployeeDetailsUseCase;
  late MockInsertEmployeeDetailsRepository mockInsertEmployeeDetailsRepository;

  var employeeDetails = EmployeeEntity(
      id: -1,
      employeeName: "Tiger Sai",
      employeeSalary: 4000000,
      country: "India",
      jobTitle: "Team Lead"
  );

  setUp((){
    mockInsertEmployeeDetailsRepository = MockInsertEmployeeDetailsRepository();
    insertEmployeeDetailsUseCase = InsertEmployeeDetailsUseCase(repository: mockInsertEmployeeDetailsRepository);
    registerFallbackValue(employeeDetails);
  });

  test('to check if data is inserted into database', () async{
    when(() => mockInsertEmployeeDetailsRepository.insertEmployeeDetails(any())).thenAnswer((_) async => Right(employeeDetails));
    final result = await insertEmployeeDetailsUseCase(Params(employeeEntity: employeeDetails));
    expect(result, Right(employeeDetails));
    verify(() => mockInsertEmployeeDetailsRepository.insertEmployeeDetails(employeeDetails)).called(1);
    verifyNoMoreInteractions(mockInsertEmployeeDetailsRepository);
  });

}