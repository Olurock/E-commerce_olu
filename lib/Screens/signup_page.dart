import 'package:flutter/material.dart';
import 'package:lafyuu/constants.dart';
import 'package:lafyuu/custom_widgets/button.dart';

class SignupPage extends StatefulWidget {
  static String id = 'signup page';
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                'Create an account to continue',
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
                    color: kGrey,
                  ),
                  hintText: 'Full Name',
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
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: kGrey,
                  ),
                  hintText: 'Email',
                  hintStyle: TextStyle(color: kGrey),
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
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                    color: kGrey,
                  ),
                  hintText: 'Password',
                  hintStyle: TextStyle(color: kGrey),
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
                  hintText: 'Confirm Password',
                  hintStyle: const TextStyle(color: kGrey),
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    borderSide: BorderSide(color: kprimaryBlue),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    borderSide: BorderSide(color: kprimaryBlue),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Have an Account?"),
                TextButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, SignupScreen.id);
                  },
                  child: const Text(
                    "Sign in",
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
