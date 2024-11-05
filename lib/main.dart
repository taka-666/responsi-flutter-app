import 'package:flutter/material.dart';
import 'package:route_flutter/screens/home_screen.dart';
import 'package:route_flutter/screens/login_screen.dart';
import 'package:route_flutter/screens/profile_screen.dart';
import 'package:route_flutter/screens/splash_screen.dart';
import 'package:route_flutter/screens/register_screen.dart';
import 'package:route_flutter/screens/forget_password.dart';
import 'package:route_flutter/screens/edit_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/forget_password': (context) => const ForgetPasswordScreen(),
        '/home': (context) => const HomeScreen(),
        '/edit': (context) => const EditProfileScreen(),
        '/profile': (context) => const ProfileScreen(),
      },
    );
  }
}
