import 'package:figma_ui/widgets/circularsosmedlogo.dart';
import 'package:figma_ui/widgets/mytextbutton.dart';
import 'package:figma_ui/widgets/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: ListView(
            children: [
              SizedBox(height: 20.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: MyTextField(title: 'Email', insideText: 'Input Email'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: MyTextField(
                    title: 'Username', insideText: 'Input username'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: MyTextField(
                  title: 'Password',
                  insideText: 'Input password',
                  obText: true,
                ),
              ),
              SizedBox(height: 50.0),
              MyTextButton(label: 'Register'),
              SizedBox(height: 20.0),
              Center(
                child: Column(
                  children: [
                    Text('Already have account registered?'),
                    SizedBox(height: 10.0),
                    InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Text(
                        'Click here!',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text('Or'),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularSosmedLogo(
                          paddingAllSize: 10.0,
                          size: 45.0,
                          link: 'assets/images/google_icon.png',
                        ),
                        SizedBox(width: 20.0),
                        CircularSosmedLogo(
                          paddingAllSize: 8.0,
                          size: 50.0,
                          link: 'assets/images/facebook_icon.png',
                        ),
                        SizedBox(width: 20.0),
                        CircularSosmedLogo(
                          paddingAllSize: 8.0,
                          size: 50.0,
                          link: 'assets/images/twitter_icon.png',
                        ),
                      ],
                    ),
                    SizedBox(height: 50.0),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
