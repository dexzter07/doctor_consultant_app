import 'package:doctor_consultant_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpForm extends StatelessWidget {
  final GlobalKey formKey;
  late String _username, _email, _password, _phoneNumber;
  SignUpForm({Key? key,required this.formKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFieldName(text: "Username",),
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: "dexzter07"
              ),
              //For validation we use a package
              validator: RequiredValidator(errorText: "Username is required"),
              onSaved: (username) => _username = username!,
            ),
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
            TextFieldName(text: "Phone",),
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: "+91 8570836629"
              ),
              validator: RequiredValidator(errorText: "Phone number is required"),
              onSaved: (phoneNumber) => _phoneNumber = phoneNumber!,
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
            const SizedBox(height: defaultPadding,),
            TextFieldName(text: "Confirm password",),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                  hintText: "********"
              ),
              validator: (pass) => MatchValidator(errorText: "Password doesnot match").validateMatch(pass!, _password),
            ),
          ],
        ));
  }
}

class TextFieldName extends StatelessWidget {
  final String text;
  const TextFieldName({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 3),
      child: Text(text,
        style: TextStyle(fontWeight: FontWeight.w600,color: Colors.black54),
      ),
    );
  }
}
