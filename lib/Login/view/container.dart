import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Containers extends StatelessWidget {
  const Containers({
    super.key,
    required this.items,
    required this.itemsSvg,
  });
  final String items;
  final String itemsSvg;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color.fromARGB(255, 17, 56, 88),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SvgPicture.asset(
            itemsSvg,
            width: 50,
            height: 50,
          ),
          Text(
            items,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          )
        ],
      ),
    );
  }
}
