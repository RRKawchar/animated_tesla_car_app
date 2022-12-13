import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tesla_car_app/home_controller.dart';

class TestScreen extends StatelessWidget {
  TestScreen({Key? key}) : super(key: key);
  final HomeController _controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation:_controller,
      builder: (context,snapshot){
        return Scaffold(
          body: Center(
            child: GestureDetector(
                onTap: _controller.updateRightDoorLock,
                child: _controller.isRightDoorLock
                    ? SvgPicture.asset("assets/icons/door_lock.svg")
                    : SvgPicture.asset("assets/icons/door_unlock.svg")),
          ),
        );
      },

    );
  }
}
