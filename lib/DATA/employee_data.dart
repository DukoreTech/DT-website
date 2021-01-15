

class EmployeeData {
  int _id;
  String _name;
  double _salary;

  EmployeeData(this._id, this._name, this._salary);

  //setter
  set id(int id){
    this._id = id;
  }

  set name(String name){
    this._name = name;
  }

  set salary(double salary){
    this._salary = salary;
  }

  //getter
  int get id => this._id;

  String get name => this._name;

  double get salary => this._salary;


}