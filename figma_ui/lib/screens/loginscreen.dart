import 'package:figma_ui/screens/registerscreen.dart';
import 'package:figma_ui/widgets/mytextbutton.dart';
import 'package:figma_ui/widgets/mytextfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
              SizedBox(height: 130.0),
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
              MyTextButton(label: 'Login'),
              SizedBox(height: 20.0),
              Center(
                child: Column(
                  children: [
                    Text('Haven\'t account registered?'),
                    SizedBox(height: 10.0),
                    InkWell(
                      onTap: () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => RegisterScreen())),
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
                            paddingAllSize: 8.0,
                            size: 20.0,
                            link:
                                'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Google_%22G%22_Logo.svg/2048px-Google_%22G%22_Logo.svg.png'),
                        SizedBox(width: 20.0),
                        CircularSosmedLogo(
                            paddingAllSize: 5.0,
                            size: 24.0,
                            link:
                                'https://www.energywateragency.gov.mt/wp-content/uploads/2020/08/Facebook-icon-circle-vector-free-download.png'),
                        SizedBox(width: 20.0),
                        CircularSosmedLogo(
                            paddingAllSize: 7.0,
                            size: 22.0,
                            link:
                                'https://cdn-icons-png.flaticon.com/512/124/124021.png'),
                      ],
                    )
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
