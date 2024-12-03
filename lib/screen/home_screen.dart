import 'package:flutter/material.dart';

import '../styles/app_styles.dart';
import 'my_identity_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF060270),
      body: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 40, right: 10, bottom: 20),
          child: Row(
            children: [
              const SizedBox(width: 40),
              Expanded(
                child: Text(
                  "Home Screen",
                  textAlign: TextAlign.center,
                  style:
                      AppStyles.headerPageStyle.copyWith(color: Colors.white),
                ),
              ),
              const SizedBox(width: 48)
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(30),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyIdentityScreen()),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF060270),
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
                  ],
                )
            ),
          ),
        )
      ]
      ),
    );
  }
}
