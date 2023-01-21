import 'package:coffeego/src/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderList extends StatelessWidget {
  const OrderList({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> catagories = [
      {
        'itemName': 'Cappuccino',
        'itemQuantity': '1',
        'itemPrice': '100',
      },
      {
        'itemName': 'Cappuccino',
        'itemQuantity': '1',
        'itemPrice': '100',
      },
      {
        'itemName': 'Cappuccino',
        'itemQuantity': '1',
        'itemPrice': '100',
      }
    ];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ...List.generate(
          catagories.length,
          (index) => OrderListItem(
            itemName: catagories[index]['itemName'],
            itemQuantity: catagories[index]['itemQuantity'],
            itemPrice: catagories[index]['itemPrice'],
          ),
        ),
      ],
    );
  }
}

class OrderListItem extends StatelessWidget {
  const OrderListItem({
    Key? key,
    required this.itemName,
    required this.itemQuantity,
    required this.itemPrice,
  }) : super(key: key);

  final String itemName;
  final String itemQuantity;
  final String itemPrice;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainSpaceBetween,
      children: [
        Text(
          itemName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        ),
        Text(
          itemQuantity,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        ),
        Text(
          '৳ $itemPrice',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
        ),
      ],
    );
  }
}
