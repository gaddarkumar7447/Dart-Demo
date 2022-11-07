void main(){
var std = Student();
std.student = "gaddar";
std.age = "gaddar";
std.name = "gaddar";
std.showStdInfo();
}
class Student{
  var student;
  var age;
  var name;

  showStdInfo(){
    print("Student Name is : $student");
    print("Student Age is : $age");
    print("Student Roll Number is : $name");
  }
}
