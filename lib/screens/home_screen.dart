import 'package:buylist/components/app_background.dart';
import 'package:buylist/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AppBackground(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                'Lista De Compras',
                textAlign: TextAlign.start,
                style: TextStyle( 
                  color: gray_100,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
