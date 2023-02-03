import 'dart:convert';
import 'dart:developer';

import 'package:alibaba/constant.dart';
import 'package:alibaba/constants/colors_const.dart';
import 'package:alibaba/constants/spacing_const.dart';
import 'package:alibaba/models/job_services.dart';
import 'package:alibaba/screens/home_screen.dart';
import 'package:alibaba/screens/services_screen.dart';
import 'package:alibaba/widgets/progress_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

final jobServicesProvider = FutureProvider<List<JobServices>>((ref) async {
  String url = "http://8.213.19.127/work-service?id=398-19-6732";
  final response = await http.get(Uri.parse(url));
  log(response.toString());
  var responseData = json.decode(response.body);

  final jobServicesList = List<JobServices>.from(
      (responseData["response"] as List<dynamic>).map<JobServices?>((x) {
    return JobServices.fromJson(x);
  }));
  return jobServicesList;
});

class JobService extends ConsumerWidget {
  const JobService({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jobServices = ref.watch(jobServicesProvider);

    return jobServices.when(data: ((data) {
      return Center(
        child: SizedBox(
          width: 350.w,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              var item = data[index];
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: kGradientColorTwo,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "${item.job_name}",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SpacingConst.vSpacing8,
                        RichText(
                          // Controls visual overflow
                          overflow: TextOverflow.clip,

                          // Controls how the text should be aligned horizontally
                          textAlign: TextAlign.center,

                          // Control the text direction
                          textDirection: TextDirection.rtl,

                          // Whether the text should break at soft line breaks
                          softWrap: true,
                          textScaleFactor: 1,
                          text: TextSpan(
                            text: 'Description: ',
                            style: TextStyle(
                              color: kGradientColorTwo,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: "${item.job_description}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SpacingConst.vSpacing8,
                        RichText(
                          // Controls visual overflow
                          overflow: TextOverflow.clip,

                          // Controls how the text should be aligned horizontally
                          textAlign: TextAlign.center,

                          // Control the text direction
                          textDirection: TextDirection.rtl,

                          // Whether the text should break at soft line breaks
                          softWrap: true,
                          textScaleFactor: 1,
                          text: TextSpan(
                            text: 'Distance: ',
                            style: TextStyle(
                              color: kGradientColorTwo,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: "${item.distance_from_central}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
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
