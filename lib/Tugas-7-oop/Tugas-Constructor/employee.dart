class Employee {
  int id;
  String name;
  String department;

  Employee(this.id, this.name, this.department);//membuat construktor

  void display() {
    print("ID: $id, Name: $name, Department: $department");
  }
}
