//This program is based on Dart Callabe Classes, In this program, we create two classes(student, employee) and inside this classes we define call function
//In main we call both classes first is single callable classes and second is mutliple callable classes
//So in this program we can call classes instances like a function
import "dart:io";
import "dart:core";

class student{                                      //class 1 declaration(student class)
	String call(String name,int age){                 //call function
		return("Student name $name and Age $age");      
	}
}
class employee{                                     //class 2 declaration(employee class)
	String call(int id,int age){                      //call function
		return("Employee id $id and age $age");
	}
}
void main(){              
	student std=new student();                        //create obj of class 1
	var msg=std('Tushar',22);                         //calling call function
	print("Dart Callable classes");
	print(msg);

	employee emp=new employee();                      //create obj of class 2
	var msg1=emp(101,22);                             //calling call function(employee class)
	var msg2=std('Mohit',22);                         //calling call function(student class)
	print("\n\nDart Multiple Callable classes");
	print(msg1);
	print(msg2);
}
