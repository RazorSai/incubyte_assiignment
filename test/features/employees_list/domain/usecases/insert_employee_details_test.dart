import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_assignment/features/employees_list/domain/repositories/employee_list_repository.dart';
import 'package:incubyte_assignment/features/employees_list/domain/usecases/insert_employee_details_use_case.dart';
import 'package:mocktail/mocktail.dart';

class MockInsertEmployeeDetailsRepository extends Mock implements EmployeeListDomainRepository{

}

void main(){

  late InsertEmployeeDetailsUseCase insertEmployeeDetailsUseCase;
  late MockInsertEmployeeDetailsRepository mockInsertEmployeeDetailsRepository;

  setUp((){
    mockInsertEmployeeDetailsRepository = MockInsertEmployeeDetailsRepository();
    insertEmployeeDetailsUseCase = InsertEmployeeDetailsUseCase(repository: mockInsertEmployeeDetailsRepository);
  });

}