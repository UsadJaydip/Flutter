import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Login',style: TextStyle(
              fontSize: 35,
              color: Colors.teal,
              fontWeight: FontWeight.bold
            ),),

            Form(child: Column(
              children: [
                SizedBox(height:  30),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your Emails',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
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
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (String value) {
                  },
                  validator: (value) {
                    return value!.isEmpty ? 'Please Enter Password' : null;
                  },
                ),

                SizedBox(height:  30),
                MaterialButton(onPressed: (){},
                  minWidth: double.infinity,
                child: Text('Login'),
                  color: Colors.teal,
                  textColor: Colors.white,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
 }
