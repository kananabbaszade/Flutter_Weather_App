import 'package:flutter/material.dart';
import 'package:weatherapp/models/constants.dart';

import 'home.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    Constants myConstants = Constants();
   final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: myConstants.linearGradientPurple,
        ),
        width: size.width,
        height: size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                  child: Image.asset("assets/6.png"),
              width: size.width,
                height: 320,
              ),
              const SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: () {
                  // Butona tıklandığında 3 saniye bekleyip sonra ikinci ekrana geç
                  Future.delayed(Duration(seconds: 1), () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  });
                },
                child: Container(
                  height: 50,
                  width: size.width * 0.6,
                  decoration: BoxDecoration(
                    color: myConstants.primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  child: const Center(
                    child: Text(
                      'Get started',
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
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
