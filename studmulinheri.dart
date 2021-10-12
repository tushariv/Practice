//In this program we use student class to get student info, marks class to get students marks and school class to get student school info;
//In this program we use dartmultiple inheritance and dart interfaces and method overriding;
//class marks inherited class student and then class school implements both classes class student and class marks;
import "dart.io";
import "dart.core";
String name;                                            //Global variable;
class student{                                          //Parent Class A;
	int rollno,age,std;
	void getinput(){
		print("Enter student name");
		name=stdin.readLineSync();
		print("Enter student rollno");
		rollno=int.parse(stdin.readLineSync());
		print("Enter student class");
		std=int.parse(stdin.readLineSync());
		print("Enter student age");
		age=int.parse(stdin.readLineSync());
	}
	void putoutput(){
		print("Student name: $name");
		print("Student rollno: $rollno");
		print("Student class: $std");
		print("Student age: $age");
	}
}
class marks extends student{                            //Child class B;
	int totm;
	double per;
	void getinput(){
		print("Enter student total marks");
		totm=int.parse(stdin.readLineSync());
	}
	void putoutput(){
		print("Student total marks are: $totm");
		per=sum(totm);                                       //Function calling to calculate percentage of student;
		print("Student percentage is: $per");
    ponp(name,per);                                     //Function calling for Checking students performance(pass or not pass)func. name;
	}
}

double sum(int totm){                                   //Function Defination;
		double res;
		res=(totm/500)*100;
		return res;
}
void ponp(String name,double per){                      //Function Defination ;
		if(per >=90){
			print("Student $name is Excellent");
		}else if(per>= 75){
			print("Student $name is Very Good");
		}else if(per>=55){
			print("Student $name is Good");
		}else if(per >=40){
			print("Student $name have to Work harder");
		}else{
			print("Student $name Failed");
		}
}
class school implements student,marks{                  //Child class which inherited class A and class B;
	String name,sname;
	int rollno,age,std,totm;
	double per;
	void getinput(){
		print("Enter school name");
		sname=stdin.readLineSync();
	}
	void putoutput(){
		print("school name: $sname");
	}
}
void main(){                                          //Main();
	student s=new student();                            //Class A obj;
	marks m=new marks();                                //Class B obj;
	school s1=new school();                             //Class C obj;
	s.getinput();	
	m.getinput();
	s1.getinput();
	s.putoutput();
	m.putoutput();	
	s1.putoutput();
}
