import 'package:flutter/material.dart';
import 'package:shoping_app/homescreen.dart';
import 'package:shoping_app/login/textfield.dart';
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isHidden =true;
  bool isEnable =false;
  final GlobalKey<FormState> keyForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20,left: 20),
      padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.teal.shade50,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(90))
      ),
      child: Form(
        key: keyForm,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFieldTitle(
              title: "Username",
              isHiddenPassword: false,
              hintText: "Enter Username",
              validator: (value){
                RegExp regExp = RegExp(
                r'^(?=.{8,20}$)(?![_.<])(?!.*[_.-]{2})[a-zA-Z0-9._]+(?<![_.;-])$');
                if (value?.isEmpty ?? true) {
                return "Username is required";
                } else if (!regExp.hasMatch(value!)) {
                return 'Username is not allowed';
                }
                return null;
              },
            ),
            TextFieldTitle(
              title: "password",
              hintText: "Enter Password",
              isHiddenPassword: isHidden,
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  isHidden = !isHidden;
                });
              }, icon: isHidden ?
              Icon(Icons.visibility,color: Colors.grey.shade600)
              :Icon(Icons.visibility_off,color: Colors.teal)
              ),
              validator: (value){
                RegExp regExp = RegExp(
                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                if (value?.isEmpty ?? true) {
                  return "Password is required";
                } else if (value!.length < 8) {
                  return "Password must have at least 8 char";
                } else if (!regExp.hasMatch(value)) {
                  return 'Password is not allowed';
                }
                return null;
              },
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                "Forget Password",
                style: TextStyle(
                  color: Colors.teal.shade700,
                  fontSize: 17
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Row(
                      children: [
                        Checkbox(
                            fillColor: WidgetStateProperty.resolveWith((states) {
                              if (!states.contains(WidgetState.selected)) {
                                return Colors.transparent;
                              }
                              return Colors.teal;
                            }),
                          side: BorderSide(color: Colors.teal,width: 1.5),
                          value: isEnable,
                          onChanged: (value){
                            setState(() {
                              isEnable = !isEnable;
                            },);
                          }
                        ),
                        Text("Remember me",style: TextStyle(color: Colors.teal.shade800,fontSize: 15),)
                      ],
                    ),
                  MaterialButton(
                    onPressed: () {
                      if (keyForm.currentState!.validate()) {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
                      }
                    },
                    color: Colors.teal,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(18)), // Adjust the radius as needed
                    ),
                    child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400,width: 0.5)
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.grey.shade400,width: 0.5)
                  ),
                  child: Center(child: Text("G",style: TextStyle(color: Colors.teal,fontWeight: FontWeight.w600),)),
                ),
                Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.grey.shade400,width: 0.5)
                  ),
                  child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.facebook,size: 30,color: Colors.teal,))),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
