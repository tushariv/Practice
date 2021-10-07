class emp{
  int empid,salary,incre;
  String empname;
  emp(this.empname,this.empid,this.salary,this.incre);
}

void main(){
  int empid,salary,incre;
  String empname;

  List emplist=new List();
  print("How many records");
  int x=int.parse(stdin.readLineSync());
  for(int i=1;i<=x;i++){
    print("Emp name");
    empname=stdin.readLineSync();
    print("Emp id");
    empid=int.parse(stdin.readLineSync());
    print("Emp salary");
    salary=int.parse(stdin.readLineSync());
    incre=io(salary);
    emplist.add(new emp(empname,empid,salary,incre));
  }
  
  
  var mapnames=emplist.map((n){
    print("Emp details for id: ${n.empid}");
    print("Emp name: ${n.empname}");
    print("Emp id: ${n.empid}");
    print("Emp salary: ${n.salary}");
    print("Emp incre: ${n.incre}");
  });
  log(mapnames);
  
}
int io(int sal){
  int res=sal+2000;
  return res;
}
void log(var lst){
  print("----------Results---------");
  lst.forEach((value){
    print(value);
  });
}
