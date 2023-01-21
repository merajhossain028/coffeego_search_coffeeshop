import 'dart:ui';

import 'package:coffeego/src/constants/constants.dart';
import 'package:coffeego/src/constants/custom.routes.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../constants/custom_text.dart';
import '../../bill/view/bill.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/coffee.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: Container(
            height: size.height,
            width: size.width,
            color: Colors.black.withOpacity(0.8),
            child: Column(
              mainAxisAlignment: mainCenter,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/tabaq.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const CustomText(
                  fontSize: 38,
                  fontweight: FontWeight.bold,
                  text: 'Tabaq Coffee GO',
                ),
                const SizedBox(height: 20),
                const CustomText(
                  fontSize: 14,
                  fontweight: FontWeight.normal,
                  text: 'Search Your Nearest Tabaq Coffee Shop',
                ),
                const SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: mainCenter,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                        ),
                        onPressed: () async {
                          const url =
                              'https://www.google.com/maps/search/Tabaq+coffee+shop+near+me/';
                          final uri = Uri.parse(url);
                          if (!await launchUrl(uri)) {
                            throw 'Could not launch';
                          }
                        },
                        child: const Text(
                          'Go to the SHOP',
                          style: TextStyle(fontSize: 18),
                        ),
                        
                      ),
                      const Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.brown,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            SlideLeftRoute(page: const CoffeeBill()),
                          );
                        },
                        child: const Text(
                          'Your Coffee Bill',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
