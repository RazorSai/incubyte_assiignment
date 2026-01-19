import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:incubyte_assignment/features/employees_list/data/models/employees_list_model.dart';

import '../../../../fixtures/fixtures.dart';

void main(){

  final tGetEmployeesListModel = <GetEmployeesListModel>[
    GetEmployeesListModel(
      id: 1,
      employeeName: "Alice Johnson",
      employeeSalary: 75000,
      country: "India",
      jobTitle: "Software Engineer"
    ),
  ];

  test(
    'should be a subclass of EmployeesListModel', () {
      expect(tGetEmployeesListModel, isA<List<GetEmployeesListModel>>());
    }
  );

  group('fromJson', () {
    test('should return a valid model when JSON is provided', () {
      final List<dynamic> jsonMap = json.decode(fixture('employees_list.json'));
      final result = (jsonMap)
          .map((e) => GetEmployeesListModel.fromJson(e))
          .toList();
      expect(result, equals(tGetEmployeesListModel));
    });

    test('should return a json map containing the proper data', () async{
      final result = tGetEmployeesListModel[0].toJson();
      final List<dynamic> jsonMap = json.decode(fixture('employees_list.json'));
      final listOfData = (jsonMap)[0];
      expect(result, listOfData);
    });

  });

}