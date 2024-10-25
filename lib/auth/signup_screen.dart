// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';
import 'package:line_icons/line_icons.dart';

// 🌎 Project imports:
import 'package:todo_chat/auth/auth_controller.dart';
import 'package:todo_chat/auth/signin_screen.dart';
import 'package:todo_chat/common/widgets/auth_button.dart';
import 'package:todo_chat/common/widgets/input.dart';
import 'package:todo_chat/home/home_screen.dart';
import 'package:todo_chat/utils/toast.dart';

class SignupScreen extends StatefulWidget {
  static String url = '/signup';

  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _emailInput = TextEditingController();
  final TextEditingController _passwordInput = TextEditingController();
  bool _loading = false;

  Future<void> _handleSignup() async {
    try {
      setState(() {
        _loading = !_loading;
      });

      await AuthController()
          .signUp(email: _emailInput.text, password: _passwordInput.text);

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
                  "assets/logo.png",
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
                    prefixIcon: LineIcons.lock,
                    hintText: 'Password'),
                const SizedBox(
                  height: 40,
                ),
                AuthButton(
                    callback: _handleSignup,
                    label: 'Signup',
                    authenticating: _loading)
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: GestureDetector(
                onTap: () => context.push(SigninScreen.url),
                child: const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account ?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Signin",
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
