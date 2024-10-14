import 'package:daily_app/ui/screens/sign_in/sign_in.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../widgets/button.dart';
import '../../widgets/input.dart';
import '../../widgets/password_input.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Test Login Screen',
      home: SignUp(),
    ),
  );
}

// Define the SignUp page widget
class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
                'Sign Up',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              const CustomInput(
                label: 'Username:',
                hint: 'Enter username',
                obscureText: true,
              ),
              const SizedBox(height: 20),
              const CustomInput(
                label: 'Email:',
                hint: 'example@gmail.com',
                obscureText: true,
              ),
              const SizedBox(height: 20),
              const CustomPasswordInput(
                label: 'Password:',
                hint: 'Enter your password',
              ),
              const SizedBox(height: 20),
              const CustomPasswordInput(
                label: 'Confirm Password:',
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
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                          children: <TextSpan>[
                            const TextSpan(text: 'I agree to all the '),
                            TextSpan(
                              text: 'Term',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const TextSpan(text: ' and '),
                            TextSpan(
                              text: 'Condition',
                              style: TextStyle(
                                color: Colors.blue[900], // Color for "Condition"
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              CustomElevatedButton(
                text: 'Sign Up',
                onPressed: () {
                  if (kDebugMode) {
                    print('Sign up button pressed');
                  }
                },
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Navigate to the SignIn page when pressed
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignIn()),
                  );
                },
                style: TextButton.styleFrom(),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          color: Colors.grey[700],
                        ),
                      ),
                      TextSpan(
                        text: "Sign In",
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
