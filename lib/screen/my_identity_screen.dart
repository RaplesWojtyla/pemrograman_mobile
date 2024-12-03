import 'package:flutter/material.dart';

import '../styles/app_styles.dart';

class MyIdentityScreen extends StatelessWidget {
  const MyIdentityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF009421),
      body: Column(children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 20),
          child: Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios_new),
                color: Colors.white,
              ),
              Expanded(
                child: Text(
                  "My Identity",
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
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
              ),
            ),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Center(
                    child: Text(
                      "Patra Rafles Wostyla Sinaga",
                      style: AppStyles.titleStyle.copyWith(fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Center(
                    child: Text(
                      "231402052",
                      style: AppStyles.titleStyle.copyWith(fontSize: 18),
                    ),
                  ),
                ],
              )
            ),
          ),
        )
      ]),
    );
  }
}
