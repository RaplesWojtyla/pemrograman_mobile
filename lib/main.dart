import 'package:flutter/material.dart';
import 'package:tugas_prak_pem_mobile/screen/home_screen.dart';
import 'package:tugas_prak_pem_mobile/screen/my_identity_screen.dart';
import 'package:tugas_prak_pem_mobile/styles/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyIdentityScreen()
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF009421),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(
            'Go to My Identity',
            style: AppStyles.titleStyle.copyWith(
              color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}