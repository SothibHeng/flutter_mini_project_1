import 'package:daily_app/ui/screens/sign_up/sign_up.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../widgets/button.dart';
import '../../widgets/input.dart';
import '../../widgets/password_input.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Test Login Screen',
      home: SignIn(),
    ),
  );
}

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Welcome back! Please sign in to continue',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              const CustomInput(
                label: 'Email:',
                hint: 'example@gmail.com',
                obscureText: true,
              ),
              const SizedBox(height: 20),
              const CustomPasswordInput(
                label: 'Password',
                hint: 'Enter your password',
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                      Text(
                        'Remember me',
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomElevatedButton(
                text: 'Sign In',
                onPressed: () {
                  if (kDebugMode) {
                    print('Sign In button pressed');
                  }
                },
              ),
              const SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey[500],
                      margin: const EdgeInsets.only(right: 10),
                    ),
                  ),
                  Text(
                    'Or sign in with',
                    style: TextStyle(
                      color: Colors.grey[700],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.grey[500],
                      margin: const EdgeInsets.only(left: 10),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset('assets/images/facebook-logo.png', width: 50),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/google-logo.png', width: 50),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Image.asset('assets/images/apple-logo.png', width: 35),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Navigate to the SignUp page when pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
                style: TextButton.styleFrom(),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
