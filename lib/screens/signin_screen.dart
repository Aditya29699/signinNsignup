import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login/widgets/custom_scaffold.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final _formSignInKey=GlobalKey<FormState>();
  bool rememberPassword=true;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: SizedBox(height: 10,
          ),
          ),
          Expanded(
            flex: 7,
              child: Container(
                padding: EdgeInsets.fromLTRB(25.0, 50.0, 25.0, 20.0),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              )
            ),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formSignInKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('SignIn',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.blue,
                          ),),
                        TextFormField(
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return 'please enter email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: const Text('Email'),
                            hintText: 'Enter Email',
                            hintStyle:const TextStyle(
                              color: Colors.black26,
                            ),
                            border: OutlineInputBorder(
                              borderSide:const BorderSide(
                                color: Colors.black12
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:const BorderSide(
                                color: Colors.black12,
                              )
                            )
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                  
                        TextFormField(
                          obscureText: true,
                          validator: (value){
                            if(value==null || value.isEmpty){
                              return 'please enter Password';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              label: const Text('Password'),
                              hintText: 'Enter Password',
                              hintStyle:const TextStyle(
                                color: Colors.black26,
                              ),
                              border: OutlineInputBorder(
                                borderSide:const BorderSide(
                                    color: Colors.black12
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:const BorderSide(
                                    color: Colors.black12,
                                  )
                              )
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                  
                              children: [
                                Checkbox(
                                    value: rememberPassword, onChanged: (bool?value){
                                      setState(() {
                                        rememberPassword=value!;
                                      });
                                },
                                  activeColor: Colors.blue,
                  
                                ),
                                const Text('Remember me',
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                                ),
                              ],
                            ),
                            GestureDetector(
                              child: Text(
                                'Forget Password ?',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ],
                        ),
                  
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                          onPressed: (){
                  
                          },
                          child:const Text('Sign up'),
                        ),
                        ),
                      ],
                  
                    ),
                  ),
                ),
          ))
        ],
      ),
    );
  }
}
