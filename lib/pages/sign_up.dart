import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel/auth.dart';
import 'package:travel/pages/login_page.dart';


class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController namecontroller=new TextEditingController();
  TextEditingController passwordcontroller=new TextEditingController();
  TextEditingController mailcontroller=new TextEditingController();
  final _formkey=GlobalKey<FormState>();

  
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,size: 30,)),
        title: Text("Signup",style: TextStyle(fontWeight: FontWeight.bold),),
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
                padding: const EdgeInsets.all(16.0), 
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start, // Center the content
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 300,top: 10),
                      child: Text("Name",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 5,),
                    SizedBox(
                      width: 370,
                      height: 50,
                      child: TextFormField(
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Please Enter name";
                          }
                          return null;
                        },
                        controller: namecontroller,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person), 
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
                    Padding(
                      padding: const EdgeInsets.only(right: 300,top: 10),
                      child: Text("Email",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    const SizedBox(height: 5), // Add spacing between fields
                    SizedBox(
                      width: 370,
                      height: 50,
                      child: TextFormField(
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Please Enter E-mail";
                          }
                          return null;
                        },
                        controller: mailcontroller,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
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
                    Padding(
                      padding: const EdgeInsets.only(right: 280,top: 10),
                      child: Text("Password",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    const SizedBox(height: 10), // Add spacing between fields
                    SizedBox(
                      width: 370,
                      height: 50,
                      child: TextFormField(
                        validator: (value){
                          if(value==null || value.isEmpty){
                            return "Please Enter Password";
                          }
                          return null;
                        },
                        controller: passwordcontroller,
                        decoration: InputDecoration(
                          // labelText: 'Password',
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
                    // Padding(
                    //   padding: const EdgeInsets.only(left: 40,top: 10),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.start,
                    //     children: [
                    //       Checkbox(value: isChecked, onChanged:(value){
                    //         setState(() {
                    //           isChecked=value!;
                    //         });
                    //       }),
                    //       Text("I agree to the T&C")
                    //     ],
                    //   ),
                    // ),
                    SizedBox(height: 30,),
                    SizedBox(
                      width: 370,
                      height: 50,
                      child: ElevatedButton(onPressed: () async{
                        createUser(namecontroller.text, mailcontroller.text, passwordcontroller.text).
                        then((value){
                          if(value=="success"){
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Account created")));
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                          }
                          else{
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value)));
                          }
                        });
                      },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.lightBlue[200]
                          ),
                          child: Text("Register")),
                    ),
                    SizedBox(height: 20,),
                    RichText(text: TextSpan(
                        text: "Already Have an account? ",
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: "Signin",recognizer: TapGestureRecognizer()..onTap=(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
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
