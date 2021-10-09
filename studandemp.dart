//In this program we ask user to give input and then providing output
//In this program we use single inheritance and method overriding
class student{                                    //class student Defination
    String name;
    int rollno;
    void stud_input(){
      print("Enter Student name");
      name=stdin.readLineSync();
      print("Enter Student rollno");
      rollno=int.parse(stdin.readLineSync());
    }
    void disp(){
      print("Student name: $name");
      print("Student rollno: $rollno");
    }
}
class emp extends student{                       //class emp Defination
  void emp_input(){
    print("Enter emp name");
    name=stdin.readLineSync();
    print("Enter emp id");
    rollno=int.parse(stdin.readLineSync());
  }
  void disp(){
    print("Emp name: $name");
    print("Emp id: $rollno");
  }
}
void main(){
  emp e=new emp();
  student s=new student();
  //e.stud_input();
  //e.disp();
  print("1 for Student or 2 for emp");      //here we ask user to give input 
  String ex=stdin.readLineSync();
  if(ex=='1'){                              //Decision making
    s.stud_input();                         //student class (calling)
    s.disp();
  }else{
    e.emp_input();                          //emp class (calling)
    e.disp();
  }
}
