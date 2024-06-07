import 'package:flutter/material.dart';
import 'package:ott/netflixGETSTARTED.dart';
import 'package:ott/netflixPROFILESELECT.dart';

class LOGIN extends StatefulWidget {
  const LOGIN({super.key});

  @override
  State<LOGIN> createState() => _LOGINState();
}

class _LOGINState extends State<LOGIN> {

  final logKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Icon(Icons.arrow_back, color: Colors.white,)),
        title:  Image.asset("images/neticonfull.png", width: 120,),
        backgroundColor: Colors.black,

      ),
      body: SingleChildScrollView(
        child: Form(
          key: logKey,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(height: 100),
                Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    // border: Border.all(color: Colors.white),
                    //borderRadius: BorderRadius.circular(),
                  ),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      validator: (input)
                      {
                        if(input == null || input.isEmpty)
                        {
                          return "please enter the valid input";
                        }
                        else{
                          setState(() {
                            Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => PROSEL()
                              ),
                            );
                          });
                        }
                      },
                      decoration: InputDecoration(
                        //focusedBorder: InputBorder.none,
                        //disabledBorder: InputBorder.none,
                          errorStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.red,
                          ),
                          fillColor: Colors.grey.shade800,
                          filled: true,
                          labelText: "Email or phone number",
                          labelStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                          //focusedBorder: InputBorder.none,
                          //enabledBorder: InputBorder.none

                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                    //border: Border.all(color: Colors.white),
                  ),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    validator: (input)
                    {
                      if(input == null || input.isEmpty)
                      {
                        return "Enter valid password.";
                      }
                      else{
                        setState(() {
                          Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => PROSEL()
                            ),
                          );
                        });
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.grey.shade800,
                      errorStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                      ),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      //enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: (){
                    if(logKey.currentState!.validate());
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height/18,
                    width: MediaQuery.of(context).size.width/1.1,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text("Sign In", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text("OR", style: TextStyle(color: Colors.white,
                    fontSize: 18,
                    //fontWeight: FontWeight.bold
                ),
                ),
                SizedBox(height: 10),
                Card(
                  color: Colors.grey.shade800,
                  child: Container(
                    height: MediaQuery.of(context).size.height/18,
                    width: MediaQuery.of(context).size.width/1.1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Text("Use a Sign-In Code", style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text("Forgot password?", style: TextStyle(color: Colors.white,
                  fontSize: 20, fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 30),
                Text("New to Netflix? Sign up now.",style: TextStyle(color: Colors.white,
                  fontSize: 18, fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 30),
                Text("Sign in is protected by Google reCAPTCHA to ensure you're not a bot. Learn more",
                  style: TextStyle(color: Colors.white,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),

              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,


    );
  }
}
