import 'package:flutter/material.dart';
import 'loginform.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black,
                Colors.teal,
                Colors.teal,
                Colors.teal,
              ]
            ),
          ),
          child: Column(
            children: [
              Expanded(
                  child:
                  Container(
                    alignment: Alignment.bottomLeft,
                    padding: EdgeInsets.only(left: 45,bottom: 22),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  )
              ),
              Expanded(
                flex: 2,
                child:Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Colors.teal.shade300,
                            Colors.teal.shade200,
                            Colors.white
                          ]
                        ),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(100))
                      ),
                    ),
                    LoginForm()
                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}
