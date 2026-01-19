import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_assignment/features/employees_list/data/datasources/get_employees_list_data_source.dart';
import 'package:incubyte_assignment/features/employees_list/data/repositories/get_employees_repository_impl.dart';
import 'package:mocktail/mocktail.dart';

class MockGetEmployeesListRepository extends Mock implements GetEmployeesListDataSource {

}

void main(){
  late GetEmployeesRepositoryImpl getEmployeesRepositoryImpl;
  late MockGetEmployeesListRepository mockGetEmployeesListRepository;

  setUp((){
    mockGetEmployeesListRepository = MockGetEmployeesListRepository();
    getEmployeesRepositoryImpl = GetEmployeesRepositoryImpl(
      localDataSource: mockGetEmployeesListRepository,
    );
  });

  group('getEmployeesList', (){
    test('should fetch employees list from database', (){
      getEmployeesRepositoryImpl.getEmployeesList();
    });
  });

}
