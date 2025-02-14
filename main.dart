import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: Text('Sign In'),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Sign In',style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),),
            
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                bottom: 10,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Enter Your Password And Email',style: TextStyle(
                   fontSize: 15,

                  ), ),
                ],
              ),
            ),

            Container(
              padding: EdgeInsets.only(
                right: 35,
                left: 35,
              ),
              child: Form(child: Column(
                children: [
                  SizedBox(height:  30,),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Enter your Emails',
                      prefixIcon: Icon(Icons.email,color: Colors.teal,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    onChanged: (String value) {
                      },
                    validator: (value) {
                      return value!.isEmpty ? 'Please Enter Email' : null;
                    },
                  ),

                  SizedBox(height:  30),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your Password',
                      prefixIcon: Icon(Icons.lock,color: Colors.teal,),
                      suffixIcon: InkWell(
                        onTap: (){

                        },
                          child: Icon(Icons.visibility_off,color: Colors.teal,)),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    onChanged: (String value) {
                    },
                    validator: (value) {
                      return value!.isEmpty ? 'Please Enter Password' : null;
                    },
                  ),
                  SizedBox(height: 20),

                  Align(
                    alignment: Alignment.centerLeft,
                      child: Text('Forgot Password',style: TextStyle(fontWeight: FontWeight.w500 ),)),

                  SizedBox(height:  30),
                  MaterialButton(onPressed: () {},
                    minWidth: 200,
                  child: Text('Login'),
                    color: Colors.teal,
                    textColor: Colors.white,
                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
 }
