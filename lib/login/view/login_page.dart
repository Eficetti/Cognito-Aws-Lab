import 'package:cognito_aws_labs/login/Widgets/input_field.dart';
import 'package:cognito_aws_labs/login/services/cognito_service.dart';
import 'package:cognito_aws_labs/login/widgets/button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('COGNITO AWS LABS'))),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/img/login_image.png'),
                height: 200,
              ),
              InputField(
                controller: emailController,
                isPassword: false,
                labelTxt: 'Email',
                icon: Icons.person,
              ),
              const SizedBox(height: 60),
              InputField(
                controller: passwordController,
                isPassword: true,
                labelTxt: 'Password',
                icon: Icons.lock,
              ),
              const SizedBox(height: 60),
              CustomButton(
                title: 'Login',
                onPresses: () => login(
                  emailController.text,
                  passwordController.text,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login(String email, String password) =>
      CognitoService().createInitialRecord(
        email: email,
        password: password,
      );
}
