import 'package:alibaba/constants/spacing_const.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constant.dart';

class CardItem extends StatelessWidget {
  final String logo;
  final String holder;
  final String number;
  final String type;

  const CardItem(
      {Key? key,
      required this.logo,
      required this.number,
      required this.holder,
      required this.type})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 11, right: 5.5),
      child: FadeInUp(
        duration: const Duration(milliseconds: 900),
        child: Container(
          height: 120.h,
          width: 296,
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.white),
                  child: const Icon(
                    Icons.school,
                    color: Colors.teal,
                    size: 20,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  holder,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.sp,
                  ),
                ),
                SpacingConst.vSpacing16,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            color: Colors.white30,
                            fontSize: 12.sp,
                          ),
                        ),
                        Text(
                          number,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.share,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
