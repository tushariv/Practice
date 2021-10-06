class student{
  double scimarks,mathmarks,engmarks,marmarks;
  int rollno;
  String name;
  double per,totmarks;
  student(this.name,this.rollno,this.scimarks,this.mathmarks,this.engmarks,this.marmarks,this.per,this.totmarks);
}
void main(){
  double scimarks,mathmarks,engmarks,marmarks;
  int rollno;
  String name;
  double per,totmarks;
  List markslist=new List();
  print("How many records");
  int x=int.parse(stdin.readLineSync());
  for(int i=1;i<=x;i++){
    print("Enter student name:");
    name=stdin.readLineSync();
    print("Enter student rollno");
    rollno=int.parse(stdin.readLineSync());
    print("Enter student scimarks,mathmarks,engmarks,marmarks");
    scimarks=double.parse(stdin.readLineSync());
    mathmarks=double.parse(stdin.readLineSync());
    engmarks=double.parse(stdin.readLineSync());
    marmarks=double.parse(stdin.readLineSync());
    per=perc(scimarks,mathmarks,engmarks,marmarks);
    totmarks=tot(scimarks,mathmarks,engmarks,marmarks);
    markslist.add(new student(name,rollno,scimarks,mathmarks,engmarks,marmarks,per,totmarks));
  }
  var mapname=markslist.map((n){
    print("Student name: ${n.name}");
    print("Student rollno: ${n.rollno}");
    print("Student science marks: ${n.scimarks}");
    print("Student math marks: ${n.mathmarks}");
    print("Student english marks: ${n.engmarks}");
    print("Student marathi marks: ${n.marmarks}");
    print("Student's overall percentage is: ${n.per}");
    print("Student's Total marks: ${n.totmarks}");
    
  });
  log(mapname);
}
void log(var lst){
  print("--------Results---------");
  lst.forEach((value){
    print(value);
  });
}
double tot(double s,double m,double e,double ma){
  double tot=s+m+e+ma;
  return tot;
}

double perc(double s,double m,double e,double ma){
  double res=(s+m+e+ma)/400*100;
  return res;
