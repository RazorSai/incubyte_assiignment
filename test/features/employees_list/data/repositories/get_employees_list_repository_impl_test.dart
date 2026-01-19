import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_assignment/core/datasources/get_employees_list_source.dart';
import 'package:incubyte_assignment/features/employees_list/data/models/employees_list_model.dart';
import 'package:incubyte_assignment/features/employees_list/data/repositories/get_employees_repository_impl.dart';
import 'package:mocktail/mocktail.dart';

class MockGetEmployeesListRepository extends Mock implements GetEmployeesListSource {

}

void main(){
  late GetEmployeesRepositoryImpl getEmployeesRepositoryImpl;
  late MockGetEmployeesListRepository mockGetEmployeesListRepository;

  final tGetEmployeesListModel = <GetEmployeesListModel>[
    GetEmployeesListModel(
        id: 1,
        employeeName: "Alice Johnson",
        employeeSalary: 75000,
        country: "India",
        jobTitle: "Software Engineer"
    ),
  ];

  setUp((){
    mockGetEmployeesListRepository = MockGetEmployeesListRepository();
    getEmployeesRepositoryImpl = GetEmployeesRepositoryImpl(
      localDataSource: mockGetEmployeesListRepository,
    );
  });

  group('employee', (){
    test('should fetch employees list from database', () async{
      when(() => mockGetEmployeesListRepository.getEmployeesListDataSource()).thenAnswer((_) async => tGetEmployeesListModel);
      final result = await getEmployeesRepositoryImpl.getEmployeesList();
      verify(() => mockGetEmployeesListRepository.getEmployeesListDataSource()).called(1);
      expect(result, equals(Right(tGetEmployeesListModel)));
    });
  });

}
