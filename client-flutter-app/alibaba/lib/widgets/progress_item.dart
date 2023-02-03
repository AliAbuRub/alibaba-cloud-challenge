import 'package:alibaba/constants/spacing_const.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class ProgressItem extends StatelessWidget {
  final String logo;
  final String type;
  final String percent;
  final num value;
  final IconData icon;

  const ProgressItem({
    Key? key,
    required this.logo,
    this.icon = Icons.ac_unit,
    required this.type,
    required this.percent,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 7,
        bottom: 7,
        left: 36,
        right: 31,
      ),
      child: FadeInUp(
        duration: const Duration(milliseconds: 900),
        child: Container(
          height: 69,
          width: double.infinity,
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [kGradientColorTwo, kSecondaryColor],
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 0,
                            vertical: 0,
                          ),
                          child: Icon(
                            icon,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SpacingConst.hSpacing16,
                    Text(
                      type,
                      style: kInfo.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp,
                      ),
                    ),
                  ],
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircularProgressIndicator(
                      value: value.toDouble(),
                      color: Colors.white,
                    ),
                    Text("${(value * 100).toStringAsFixed(1)}%",
                        style: kInfo.copyWith(
                          fontSize: 8,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
