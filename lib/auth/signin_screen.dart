import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';
import 'package:todo_chat/auth/auth_controller.dart';
import 'package:todo_chat/auth/signup_screen.dart';
import 'package:todo_chat/common/widgets/auth_button.dart';
import 'package:todo_chat/common/widgets/input.dart';
import 'package:todo_chat/home/home_screen.dart';
import 'package:todo_chat/utils/toast.dart';

class SigninScreen extends StatefulWidget {
  static String url = '/signin';

  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  final TextEditingController _emailInput = TextEditingController();
  final TextEditingController _passwordInput = TextEditingController();

  bool _loading = false;

  Future<void> _handleSignin() async {
    try {
      setState(() => _loading = !_loading);

      await AuthController()
          .signIn(email: _emailInput.text, password: _passwordInput.text);

      if (mounted) Router.neglect(context, () => context.go(HomeScreen.url));
    } catch (ex) {
      ToastUtil.error(title: 'Invalid email or password');
    } finally {
      setState(() {
        _loading = !_loading;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(10.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
                AppInput(
                  inputController: _emailInput,
                  prefixIcon: LineIcons.envelope,
                  hintText: 'Email',
                  inputType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 20,
                ),
                AppInput(
                  inputController: _passwordInput,
                  prefixIcon: LineIcons.envelope,
                  hintText: 'Password',
                ),
                const SizedBox(
                  height: 40,
                ),
                AuthButton(
                    callback: _handleSignin,
                    label: "Signin",
                    authenticating: _loading)
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () => context.push(SignupScreen.url),
                child: const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont have an account ?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Create One",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
