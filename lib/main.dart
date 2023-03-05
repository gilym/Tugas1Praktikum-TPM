import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Login());
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterLogo(
                size: 50,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 350,
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                      hintText: 'Email'),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 350,
                child: TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40)),
                      hintText: 'Password'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 350,
                child: ElevatedButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text('Log In'),
                ),
              ),
              TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ))
            ],
          ),
        ),
      ),
    ));
  }
}
