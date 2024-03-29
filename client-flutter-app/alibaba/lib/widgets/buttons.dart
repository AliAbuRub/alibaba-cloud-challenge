import 'package:animate_do/animate_do.dart';
import 'package:alibaba/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: FadeInUp(
        duration: const Duration(milliseconds: 1100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            CustomButton(
              title: 'Add Courses',
              svgPath: 'assets/icons/add.svg',
            ),
            CustomButton(
              title: 'Contact',
              svgPath: 'assets/icons/send.svg',
            ),
          ],
        ),
      ),
    );
  }
}
