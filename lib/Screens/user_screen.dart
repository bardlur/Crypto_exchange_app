import 'package:crypto_app/data/constants/constants.dart';
import 'package:flutter/material.dart';

class FinanceScreen extends StatelessWidget {
  const FinanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'not available!',
                style: TextStyle(
                  fontFamily: 'CoreSansC',
                  fontSize: 25
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}