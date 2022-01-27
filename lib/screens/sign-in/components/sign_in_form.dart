import 'package:figure_the_brand_mobileapp/components/custom_suffix_icon.dart';
import 'package:figure_the_brand_mobileapp/components/default_button.dart';
import 'package:figure_the_brand_mobileapp/components/error_lists.dart';
import 'package:figure_the_brand_mobileapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:figure_the_brand_mobileapp/screens/login_loading_screen/login_loader_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool passwordView = false;
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool rememberMe = false;

  List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            emailField(),
            SizedBox(height: getProportionateScreenHeight(20)),
            passwordForm(),
            SizedBox(height: getProportionateScreenHeight(20)),
            Row(
              children: [
                Checkbox(
                    value: rememberMe,
                    activeColor: mPrimaryColour,
                    onChanged: (value) {
                      setState(() {
                        rememberMe = value!;
                      });
                    }),
                const Text('Remember me'),
                const Spacer(),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                      context, ForgotPasswordScreen.routename),
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            ErrorLists(errors: errors),
            SizedBox(height: getProportionateScreenHeight(30)),
            DefaultButton(
                buttonText: "Sign In",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, LoginLoaderScreen.routename);
                  }
                })
          ],
        ));
  }

  TextFormField passwordForm() {
    return TextFormField(
        onSaved: (newValue) => password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(nullPasswordError)) {
            setState(() {
              errors.remove(nullPasswordError);
            });
          } else if (value.length >= 8 && errors.contains(shortPasswordError)) {
            setState(() {
              errors.remove(shortPasswordError);
            });
          }
        },
        validator: (value) {
          if (value != null &&
              value.isEmpty &&
              !errors.contains(nullPasswordError)) {
            setState(() {
              errors.add(nullPasswordError);
            });
            return "";
          } else if (value != null &&
              value.length < 8 &&
              !errors.contains(shortPasswordError)) {
            setState(() {
              errors.add(shortPasswordError);
            });
            return "";
          }
        },
        obscureText: !passwordView,
        decoration: InputDecoration(
            focusColor: mPrimaryColour,
            hintText: 'Enter password',
            labelText: 'Password',
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: CustomSuffixIcon(
              desiredIcon: !passwordView
                  ? Icons.visibility_outlined
                  : Icons.visibility_off_outlined,
              pressedIcon: () {
                setState(() {
                  passwordView = !passwordView;
                });
              },
            )));
  }

  TextFormField emailField() {
    return TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          if (value.isNotEmpty && errors.contains(nullEmailError)) {
            setState(() {
              errors.remove(nullEmailError);
            });
          } else if (emailValidatorRegExp.hasMatch(value) &&
              errors.contains(inavlidEmailError)) {
            setState(() {
              errors.remove(inavlidEmailError);
            });
          }
        },
        validator: (value) {
          if (value != null &&
              value.isEmpty &&
              !errors.contains(nullEmailError)) {
            setState(() {
              errors.add(nullEmailError);
            });
            return "";
          } else if (value != null &&
              !emailValidatorRegExp.hasMatch(value) &&
              !errors.contains(inavlidEmailError)) {
            setState(() {
              errors.add(inavlidEmailError);
            });
            return "";
          }
        },
        decoration: InputDecoration(
          focusColor: mPrimaryColour,
          hintText: 'Enter email address',
          labelText: 'Email',
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: CustomSuffixIcon(
            desiredIcon: Icons.email_outlined,
            pressedIcon: () {},
          ),
        ));
  }
}
