import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel/auth.dart';
import 'package:travel/pages/home_page.dart';
import 'package:travel/pages/sign_up.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController useremailcontroller=new TextEditingController();
  TextEditingController userpasswordcontroller=new TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,size: 30,)),
        title: Text("Login",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      backgroundColor: Colors.lightBlue[100],
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:  BorderRadius.only(bottomLeft: Radius.circular(100))
                ),
                height: MediaQuery.of(context).size.height*.5,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(16.0), // Add some padding
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start, // Center the content
                  children: [
                    SizedBox(height: 30,),
                    const SizedBox(height: 16), // Add spacing between fields
                    SizedBox(
                      width: 370,
                      height: 50,
                      child: TextFormField(
                        controller: useremailcontroller,
                        validator: (value){
                          if(value==null ||  value.isEmpty){
                            return 'Please Enter Email';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          labelText: 'Email',
                          // hintText: 'Enter your full name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded corners
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded corners
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded corners
                            borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 40), // Add spacing between fields
                    SizedBox(
                      width: 370,
                      height: 50,
                      child: TextFormField(
                        validator: (value){
                          if(value==null ||  value.isEmpty){
                            return 'Please Enter Password';
                          }
                          return null;
                        },
                        controller: userpasswordcontroller,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          // hintText: 'Enter your full name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded corners
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded corners
                            borderSide: const BorderSide(color: Colors.blue),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30), // Rounded corners
                            borderSide: const BorderSide(color: Colors.blue, width: 2.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding:  EdgeInsets.only(left: MediaQuery.of(context).size.width*.55),
                      child: Text('Forget Password'),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      width: 370,
                      height: 50,
                      child: ElevatedButton(onPressed: (){
                        loginUser(useremailcontroller.text,userpasswordcontroller.text).
                        then((value){
                          if(value){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login succcessfull")));
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                          }
                          else{
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login failed,try again")));
                          }
                        });
                      },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue[200]
                          ),
                          child: Text("Sign In")),
                    ),
                    SizedBox(height: 20,),
                    RichText(text: TextSpan(
                        text: "Don't Have an account? ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: "Signup",recognizer: TapGestureRecognizer()..onTap=(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
                          })
                        ]))
                  ],
                ),
              ),
              Image.asset('assets/travel.png',height: 370,)
            ],
          ),
        ),
      ),

    );
  }
}
