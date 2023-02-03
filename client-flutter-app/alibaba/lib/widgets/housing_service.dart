import 'dart:developer';

import 'package:alibaba/constant.dart';
import 'package:alibaba/constants/colors_const.dart';
import 'package:alibaba/constants/spacing_const.dart';
import 'package:alibaba/screens/home_screen.dart';
import 'package:alibaba/screens/services_screen.dart';
import 'package:alibaba/widgets/progress_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final images = [
  "https://media.istockphoto.com/id/1384642884/photo/the-evening-sun-is-reflected-in-the-modern-glass-facade-with-balconies.jpg?b=1&s=170667a&w=0&k=20&c=9cnDfc9tNIAcgvuGHZkST7CP-dFaNXutX8OpzVO1jEA=",
  "https://thumbs.dreamstime.com/b/apartment-building-modern-buildings-new-westminster-british-columbia-canada-40351928.jpg",
  "https://cdn.vox-cdn.com/thumbor/zVuv0s-NzoqRQef_zb91-X8sT88=/0x0:1800x1168/1200x800/filters:focal(733x429:1021x717)/cdn.vox-cdn.com/uploads/chorus_image/image/63048549/logan_apartments.6.jpg",
  "https://www.trulia.com/pictures/thumbs_6/zillowstatic/fp/d0c4759abf73ca98af7693843939af22-f_b.jpg",
  "https://610west.com/wp-content/uploads/2020/05/610w_Hero.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQABEYMqYhtuPEUmyvwE8nwkYhHs-fNeiuuTMXr1nKx3lboWOULy7oT22dfd0f9gdmLymw&usqp=CAU"
];

class HousingService extends ConsumerWidget {
  const HousingService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final housingServices = ref.watch(housingServicesProvider);

    return housingServices.when(data: ((data) {
      return Center(
        child: SizedBox(
          width: 350.w,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var item = data[index];
              final image = images[index];
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.all(10),
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              color: item.availability == "available"
                                  ? ColorsConst.positiveGreen
                                  : ColorsConst.negativeRed,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "${item.availability}",
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: 300.w,
                          height: 200.h,
                          child: Image(
                            image: NetworkImage(
                              "$image",
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(10),
                        padding: const EdgeInsets.all(4),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                color: kGradientColorTwo,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "Specifications",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SpacingConst.vSpacing8,
                            Text(
                              "Capacity: ${item.capacity}",
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                            SpacingConst.vSpacing8,
                            Text(
                              "Distance From Center: ${double.parse((item.distance_from_central)).toStringAsFixed(2)}",
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                            SpacingConst.vSpacing8,
                            Text(
                              "Bathrooms: ${item.bathrooms}",
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                            SpacingConst.vSpacing8,
                            Text(
                              "Price: ${item.price}",
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                            SpacingConst.vSpacing8,
                            Text(
                              "Size: ${item.size}",
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              );
            },
          ),
        ),
      );
    }), error: ((error, stackTrace) {
      return const Text('error');
    }), loading: (() {
      return Column(
        children: const [Text("Loading"), CircularProgressIndicator()],
      );
    }));
  }
}
