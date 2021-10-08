    //In this code we have create a class and inherited the class with another class 
    //In this code we are getting dynamic data from the user and output on display 
    //class stdresult inherit class stdbasic
class stdbasic{           //Parent class
	String name,gender;
	int age;

	void getbasic(){      //getbasic method of stdbasic class
		print("Enter student name");
		name=stdin.readLineSync();
		print("Enter student age");
		age=int.parse(stdin.readLineSync());
		print("Enter student gender");
		gender=stdin.readLineSync();
	}

	void putbasic(){		  //putbasic method of stdbasic class
		print("Student's info");
		print("Name: $name");
		print("Age: $age");
		print("Gender: $gender");
	}
}

class stdresult extends stdbasic{      //Child class
	int totm;
	double per;
	String grade;
	void getresult(){               //getresult method of stdresult class
		print("Enter student total marks");
		totm=int.parse(stdin.readLineSync());
		per=(totm*100)/500;
		print("Student grade");
		grade=stdin.readLineSync();
	}
	void putresult(){             //putresult method of stdresult class
		print("Student total marks: $totm");
		print("Student percentage: $per");
		print("Student grade: $grade");
	}
}
void main(){
	stdresult std=new stdresult();   //here we creating obj. of child class
	std.getbasic();
	std.getresult();

	std.putbasic();
	std.putresult();
}
