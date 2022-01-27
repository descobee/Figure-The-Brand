import 'package:figure_the_brand_mobileapp/components/custom_suffix_icon.dart';
import 'package:figure_the_brand_mobileapp/components/default_button.dart';
import 'package:figure_the_brand_mobileapp/components/error_lists.dart';
import 'package:figure_the_brand_mobileapp/screens/sign-in/components/no_account_text.dart';
import 'package:figure_the_brand_mobileapp/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ForgotPasswordBody extends StatelessWidget {
  const ForgotPasswordBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfigurations.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.w500),
              ),
              const Text(
                'Enter your email address and \nwe will send you a link to reset your password',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfigurations.screenHeight * 0.1),
              const ForgotPasswordForm()
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final _formKey = GlobalKey<FormState>();
  late String? email;
  List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
              onSaved: (newValue) => email = newValue,
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
              )),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          ErrorLists(errors: errors),
          SizedBox(height: SizeConfigurations.screenHeight * 0.1),
          DefaultButton(
              buttonText: 'CONTINUE',
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              }),
          SizedBox(height: SizeConfigurations.screenHeight * 0.1),
          const NoAccountLinkText(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
        ],
      ),
    );
  }
}
