
import 'package:dashboard_app/screens/vet_home_screen.dart';
import 'package:dashboard_app/widgets/input_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/outline_button.dart';
import '../widgets/primary_button.dart';
import '../widgets/rss_button.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login_screen';

  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';

  void loginWithEmailAndPassword(BuildContext context) async {
    final progress = ProgressHUD.of(context);
    try {
      progress?.show();
      final user = await _auth.signInWithEmailAndPassword(email: email, password: password);
      if(user != null) {
        Navigator.pushNamed(context, VetHomeScreen.id);
      }
      progress?.dismiss();
    } catch(e) {
      print(e);
      progress?.dismiss();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) => ProgressHUD(
        child: Builder(
            builder: (context) => Row(
          children: [
            Expanded(
              child: Container(
                color: const Color(0xFFFF7B00),
                child: Center
                (
                  child: Container(
                    width: 400.0,
                    padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(8.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5.0,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text('Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFFF7B00),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 40.0),
                        InputText(labelText: 'Email', onChange: (value) {
                          email = value!;
                        }),
                        const SizedBox(height: 20.0),
                        InputText(labelText: 'Password', obscureText: true, onChange: (value) {
                          password = value!;
                        }),
                        const SizedBox(height: 20.0),
                        PrimaryButton(text: 'Login', onPressed: (){
                          loginWithEmailAndPassword(context);
                        }),
                        const SizedBox(height: 20.0),
                        OutlineButton(text: 'Register', onPressed: () {}),
                        const SizedBox(height: 20.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Color(0xFFFF7B00),
                                height: 10.0,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                              child: const Text('OR', style: TextStyle(
                                color: Color(0xFFFF7B00)
                              )),
                            ),
                            const Expanded(
                              child: Divider(
                                thickness: 0.5,
                                color: Color(0xFFFF7B00),
                                height: 20.0,
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            RSSButton(image: 'assets/images/google_logo.png'),
                            SizedBox(width: 20.0),
                            RSSButton(image: 'assets/images/facebook_logo.png'),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            foregroundColor: const Color(0xFFFF7B00),
                            textStyle: const TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          child: const Text('Forgot Password?'),
                        ),
                      ],
                    )
                  )
                )
              ),
            ),
          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) Expanded(
              child: Image.asset(
                'assets/images/login_background.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            )
          ],
        ),
        ),
    ),
      ),
    );
  }
}





