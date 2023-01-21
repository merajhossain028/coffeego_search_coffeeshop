import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/text.dart';
import '../components/order_list.dart';

class CoffeeBill extends StatelessWidget {
  const CoffeeBill({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(0),
          ),
        ),
        elevation: 0,
        title: Text(
          'Coffee Bill',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.brown,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          debugPrint('Please Pay The Bill');
        },
        label: const Text('Pay'),
        icon: const Icon(Icons.payment),
        backgroundColor: Colors.brown,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            CustomText(
                              fontSize: 18,
                              fontweight: FontWeight.normal,
                              text: 'Tabaq Coffee',
                            ),
                            SizedBox(height: 5),
                            CustomText(
                              fontSize: 12,
                              fontweight: FontWeight.normal,
                              text: 'Bashundhara R/A, Dhaka',
                            ),
                          ],
                        ),
                        const Spacer(),
                        const Image(
                            height: 100,
                            width: 100,
                            image: AssetImage('assets/images/tabaq.jpg')),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(
                      height: 10,
                      thickness: 2,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 30),
                    const CustomText(
                      fontSize: 18,
                      fontweight: FontWeight.normal,
                      text: 'Your Order',
                    ),
                    const SizedBox(height: 20),
                    const OrderList(),
                    const SizedBox(height: 20),
                    const Divider(
                      height: 10,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomText(
                          fontSize: 18,
                          fontweight: FontWeight.normal,
                          text: 'Total',
                        ),
                        Text(
                          '৳ 300',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
