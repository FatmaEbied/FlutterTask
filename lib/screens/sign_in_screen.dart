import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Welcome Back!',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Login to your existing account',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              Center(
                child: Image.network(
                  'https://cdn-icons-png.flaticon.com/128/2981/2981313.png',
                  width: 100.0,
                  height: 100.0,
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.email),
                  labelText: "Email",
                ),
              ),
              const SizedBox(height: 16.0),
              const TextField(
                obscureText: true, // Hide password
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.password_sharp),
                  labelText: "Password",
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (bool? value) {}),
                      const Text('Remember me'),
                    ],
                  ),
                  const Text(
                    'Forgot Password',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Center(
                child: GestureDetector(
                  onTap: () async {
                    // Simulate login success and store the login state
                    final prefs = await SharedPreferences.getInstance();
                    await prefs.setBool('isLoggedIn', true);
                    print('Login successful');
                    // Navigate to home screen
                    Navigator.pushReplacementNamed(context, 'home'); 
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 101, 51, 204),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.facebook,
                            color: Color.fromARGB(255, 62, 69, 156), size: 50),
                        SizedBox(width: 20.0),
                        Icon(Icons.g_mobiledata_outlined,
                            color: Color.fromARGB(255, 250, 92, 0), size: 50),
                      ],
                    ),
                    const SizedBox(height: 80.0),
                    const Text(
                      'Don’t have an account? Sign Up',
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
