//7 steps for bloc pattern code in flutter
//imports
//stream constrollers
//stream sink getter
//constructor -add data; listen to changes
//core functions
//dispose

import 'dart:async';
import 'package:dt/DATA/employee_data.dart';

class EmployeeBloc {
  
  //sink to add in pipe
  //stream to get data from pipe
  //by pipe i mean datta flow

  List<EmployeeData> _employeeList = [

    EmployeeData(1, "Aimable", 10000.0),
    EmployeeData(2, "Alain", 20000.0),
    EmployeeData(3, "Elodie", 30000.0),
  ];

  final _employeeListStreamController = StreamController<List<EmployeeData>>();

  //for inc and desc
  final _employeeSalaryIncrementStreamController = StreamController<EmployeeData>();
  final _employeeSalaryDecrementStreamController = StreamController<EmployeeData>();

  //getters
  Stream<List<EmployeeData>> get employeeListStream =>
  _employeeListStreamController.stream;

  StreamSink<List<EmployeeData>> get employeeListSink =>
  _employeeListStreamController.sink;

  StreamSink<EmployeeData> get employeeSalaryIncrement =>
  _employeeSalaryIncrementStreamController.sink;

  StreamSink<EmployeeData> get employeeSalaryDecrement =>
  _employeeSalaryDecrementStreamController.sink;

  EmployeeBloc(){
    _employeeListStreamController.add(_employeeList);

    _employeeSalaryIncrementStreamController.stream.listen(_incrementSalary);
    _employeeSalaryDecrementStreamController.stream.listen(_decrementSalary);

  }

  _incrementSalary(EmployeeData employee){

    double salary = employee.salary;
    double incrementedSalary = salary *20/100;
    _employeeList[employee.id -1].salary = salary + incrementedSalary;
    employeeListSink.add(_employeeList);

  }

  _decrementSalary(EmployeeData employee){
        
    double salary = employee.salary; //to access salary of Employee;
    double decrementedSalary = salary * 20/100;
    _employeeList[employee.id -1].salary = salary - decrementedSalary;
    employeeListSink.add(_employeeList);

  }

  void dispose(){
    _employeeSalaryIncrementStreamController.close();
    _employeeSalaryDecrementStreamController.close();
    _employeeListStreamController.close();
  }




}

