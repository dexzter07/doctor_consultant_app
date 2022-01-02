import 'package:doctor_consultant_app/constants/constants.dart';
import 'package:doctor_consultant_app/views/auth/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import  'package:get/get.dart';

import 'auth/sign_in.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/splash_bg.svg",
          fit: BoxFit.cover,
          ),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                children: [
                  Spacer(),
                  Text("Doctor Consultant App",
                    style: Theme.of(context).textTheme.headline3!.copyWith(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(backgroundColor: Color(0xFF6CD8D1),
                      ),
                        onPressed: (){
                        Get.to(() => SignUpPage());
                        },
                        child: Text("Sign Up")
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                              elevation: 0,
                            backgroundColor: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: Color(0xFF6CD8D1))
                            )
                          ),
                          onPressed: (){
                            Get.to(SignInPage());
                          },
                          child: Text("Sign In")
                      ),
                    ),
                  ),
                  SizedBox(height: defaultPadding,),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
