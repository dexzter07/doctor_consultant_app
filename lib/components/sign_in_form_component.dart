import 'package:doctor_consultant_app/components/sign_up_form_component.dart';
import 'package:doctor_consultant_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignInForm extends StatelessWidget {
  final GlobalKey formKey;
  late String _email, _password;
   SignInForm({Key? key, required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const SizedBox(height: defaultPadding,),
            TextFieldName(text: "Email",),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: "dexztercodes07@gmail.com"
              ),
              validator: emailValidator,
              onSaved: (email) => _email = email!,
            ),

            const SizedBox(height: defaultPadding,),
            TextFieldName(text: "Password",),
            TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "********"
              ),
              validator: passwordValidator,
              onSaved: (password) => _password = password!,
              //  we also need to validate our password
              //  now if we type anything it adds that to our password
              onChanged: (pass) => _password = pass,
            ),

          ],
        ));
  }
}
