import 'package:buylist/components/app_background.dart';
import 'package:buylist/components/category_selector.dart';
import 'package:buylist/components/input_container.dart';
import 'package:buylist/components/quantaty_selector.dart';
import 'package:buylist/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return const Scaffold(
      body: AppBackground(
        child: Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 68)),
              Text(
                'Lista De Compras',
                textAlign: TextAlign.start,
                style: TextStyle( 
                  color: gray_100,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  InputContainer(),
                  SizedBox(height: 12,),
                  Row(
                    children: [
                      QuantatiSelector(),
                      CategorySelector(),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
