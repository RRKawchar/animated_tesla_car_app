import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration:const BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...List.generate(navIconSrc.length, (index) =>SvgPicture.asset(navIconSrc[index],))

          ],
        ),
      ),
    );
  }
  List<String> navIconSrc=[
    "assets/icons/Lock.svg",
    "assets/icons/Charge.svg",
    "assets/icons/Temp.svg",
    "assets/icons/Tyre.svg",

  ];
}

