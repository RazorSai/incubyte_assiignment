import 'package:flutter_test/flutter_test.dart';

void main(){

  final tGetEmployeesListModel = <GetEmployeesListModel>[];

  test(
    'should be a subclass of EmployeesListModel', () {
      expect(tGetEmployeesListModel, isA<List<EmployeesListModel>>());
    }
  );

}