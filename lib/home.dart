import 'package:flutter/material.dart';
import 'package:screens/login.dart';
import 'package:screens/signup.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Home(),
    ),
  );
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Home Page'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Welcome to ',
                      style: TextStyle(
                        fontFamily: 'MontserratAlternates',
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                    Text(
                      'Splash',
                      style: TextStyle(
                        fontFamily: 'MontserratAlternates',
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                margin: const EdgeInsets.only(
                  bottom: 30.0,
                ),
                width: 350,
                child: const Text(
                  "Don't have an account yet? click singup to register, otherwise click login",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontFamily: 'MontserratAlternates',
                    fontSize: 15.0,
                  ),
                ),
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const Login();
                    }),
                  );
                },
                height: 50.0,
                minWidth: 200.0,
                color: Colors.red,
                child: const Text(
                  'Login',
                  style: TextStyle(
                      fontFamily: 'MontserratAlternates',
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) {
                      return const SignUp();
                    }),
                  );
                },
                height: 50.0,
                minWidth: 200.0,
                color: Colors.red[900],
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      fontFamily: 'MontserratAlternates',
                      fontSize: 18,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
