//In this program we are taking dynamic user data of vehicle
//in this program we use Hierarchical Inheritance and method overriding
import "dart:io";
import "dart:core";

String ownername;                                               //Global variable
class vehicle{                                                  //Parent class A;
  String vehname,whichveh;
  int vehid;
  void getinput(){
    print("Enter vehicle type 2 wheeler or 4 wheeler");
    whichveh=stdin.readLineSync();
    print("Enter vehicle name");
    vehname=stdin.readLineSync();
    print("Enter owner name");
    ownername=stdin.readLineSync();
    print("Enter vehicle id");
    vehid=int.parse(stdin.readLineSync());
  }
  void putoutput(){
    print("Vehicle type: $whichveh wheeler");
    print("Vehicle name: $vehname");
    print("Vehicle owner name: $ownername");
    print("Vehicle id: $vehid");
  }
}
class vehbal extends vehicle{                                    //Child class B, which inherite class A
  int vehamt,bal,rem;
  void getinput(){
    print("Enter vehicle amount (rs)");
    vehamt=int.parse(stdin.readLineSync());
    print("Enter vehicle paid amt (rs) ");
    bal=int.parse(stdin.readLineSync());
  }
  void putoutput(){
    print("Vehicle amount: $vehamt rs");
    print("Vehicle paid amount: $bal rs");
    print("Vehicle remaining amount: ${vehamt-bal} rs");
  }
}
class owner extends vehicle{                                    //Child class C, which inherited class A
  String secowner;
  void getinput(){
    print("Enter second owner name");
    secowner=stdin.readLineSync();
  }
  void putoutput(){
    print("Vehicle's first name: $ownername");
    print("Vehicle's second owner $secowner");
  }
}
main(){                                                       //main()
  	vehicle v=new vehicle();                                  //Class A obj
  	vehbal vb=new vehbal();                                   //Class B obj
  	owner o=new owner();                                      //Class C obj
  	v.getinput();
  	vb.getinput();
  	print("Is there second owner y/n");                      
  	String res=stdin.readLineSync();
	if(res=='y' || res=='Y'){                                  //if vehicle has second owner 
        o.getinput();
        print("------Vehicle Details------");
        v.putoutput();
        vb.putoutput();
        o.putoutput();
    }else{                                                  //else vehicle does not have second owner
        print("------Vehicle Details------");
        v.putoutput();
        vb.putoutput();
    }
}
