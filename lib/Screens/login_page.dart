import 'package:flutter/material.dart';
import 'package:lafyuu/Screens/signup_page.dart';
import 'package:lafyuu/custom_widgets/button.dart';
import 'package:lafyuu/constants.dart';

class LoginPage extends StatefulWidget {
  static String id = 'login page';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String password;
  late String email;
  late bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 72,
              child: Image(
                image: AssetImage('images/Icon.png'),
              ),
            ),
            const SizedBox(height: 5),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Text(
                textAlign: TextAlign.center,
                'Welcome to Lafyuu',
                style: TextStyle(
                    fontSize: 30, color: kDark, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Text(
                textAlign: TextAlign.center,
                'Sign in to continue',
                style: TextStyle(fontSize: 12, color: kDark),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: kfainttext,
                  ),
                  prefixIconColor: kGrey,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: kfainttext),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: kprimaryBlue),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: kprimaryBlue),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: kfaintgrey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock_outline),
                  prefixIconColor: kGrey,
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: const Icon(Icons.visibility_off),
                  ),
                  suffixIconColor: kDark,
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: kGrey),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: kprimaryBlue),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: kprimaryBlue),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                    borderSide: BorderSide(color: kfaintgrey),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
                height: 60,
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: MyButton(
                  backgroundColor: kprimaryBlue,
                  text: 'Sign in',
                  onpressed: () async {
                    setState(
                      () {
                        Navigator.pushNamed(
                          context,
                          'main screen',
                        );
                      },
                    );
                  },
                )),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(
                textAlign: TextAlign.center,
                'Or',
                style: TextStyle(fontSize: 12, color: kDark),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: kprimaryBlue),
                ),
                height: 60,
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.g_mobiledata_outlined,
                        color: Colors.red, size: 30),
                    Text(
                      'Sign in with Google',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDark,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: kprimaryBlue),
                ),
                height: 60,
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.blueAccent, size: 30),
                    Text(
                      'Sign in with Facebook',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kDark,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an Account?"),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, SignupPage.id);
                  },
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      color: kprimaryBlue,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
