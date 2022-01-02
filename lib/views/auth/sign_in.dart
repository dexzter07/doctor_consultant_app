import 'package:doctor_consultant_app/components/sign_in_form_component.dart';
import 'package:doctor_consultant_app/components/sign_up_form_component.dart';
import 'package:doctor_consultant_app/constants/constants.dart';
import 'package:doctor_consultant_app/views/auth/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/Sign_Up_bg.svg",
            fit: BoxFit.cover,
            height: Get.height,
          ),
          Padding(
            padding:  EdgeInsets.only(top: Get.height * 0.1),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sign In",
                      style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text("Don't have an account?"),
                        TextButton(onPressed: (){
                          Get.to(SignUpPage());
                        },
                            child: Text("Sign Up!",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    const SizedBox(height: defaultPadding * 2,),
                    SignInForm(formKey: _formKey,),
                    const SizedBox(height: defaultPadding * 2,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        if(_formKey.currentState!.validate()){//
                          _formKey.currentState!.save();
                        }
                      },
                          child: Text("Sign In")),
                    ),
                    const SizedBox(height: defaultPadding,),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
