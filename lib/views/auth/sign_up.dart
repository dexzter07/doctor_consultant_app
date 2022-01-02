import 'package:doctor_consultant_app/components/sign_up_form_component.dart';
import 'package:doctor_consultant_app/constants/constants.dart';
import 'package:doctor_consultant_app/views/auth/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignUpPage extends StatelessWidget {
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
          Center(
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Create Account",
                    style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text("Already have an account?"),
                        TextButton(onPressed: (){
                          Get.to(SignInPage());
                        },
                            child: Text("Sign In!",
                            style: TextStyle(fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    const SizedBox(height: defaultPadding * 2,),
                    SignUpForm(
                      formKey: _formKey,
                    ),
                    const SizedBox(height: defaultPadding * 2,),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: (){
                        if(_formKey.currentState!.validate()){//
                          _formKey.currentState!.save();
                        }
                      },
                          child: Text("Sign Up")),
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

