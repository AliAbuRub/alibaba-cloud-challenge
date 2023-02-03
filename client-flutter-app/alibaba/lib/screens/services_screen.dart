import 'dart:convert';
import 'dart:developer';
import 'package:alibaba/constant.dart';
import 'package:alibaba/constants/colors_const.dart';
import 'package:alibaba/constants/spacing_const.dart';
import 'package:alibaba/features/login/domain/user_data.dart';
import 'package:alibaba/models/housing_services.dart';
import 'package:alibaba/screens/aaa.dart';
import 'package:alibaba/utils/theme/extensions.dart';
import 'package:alibaba/widgets/job_service.dart';
import 'package:alibaba/widgets/section_title.dart';
import 'package:alibaba/widgets/housing_service.dart';
import 'package:alibaba/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

final housingServicesProvider =
    FutureProvider<List<HousingServices>>((ref) async {
  String url = "http://8.213.19.127/housing-service?id=398-19-6732";
  final response = await http.get(Uri.parse(url));
  log(response.toString());
  var responseData = json.decode(response.body);

  final housingServicesList = List<HousingServices>.from(
      (responseData["response"] as List<dynamic>).map<HousingServices?>((x) {
    return HousingServices.fromJson(x);
  }));
  return housingServicesList;
});

class ServicesScreen extends ConsumerWidget {
  ServicesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final housingServices = ref.watch(housingServicesProvider);

    return Scaffold(
      body: SafeArea(
        child: ListView(physics: const BouncingScrollPhysics(), children: [
          housingServices.when(
            error: (error, stackTrace) {
              // log(stackTrace.toString());
              return Text("$stackTrace");
            },
            loading: () {
              return Center(
                child: Column(
                  children: const [
                    Text("Loading"),
                    CircularProgressIndicator()
                  ],
                ),
              );
            },
            data: (data) {
              log("message" + data.toString());
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 10),
                    child: Text("Housing Services",
                        style: context.textThemes.headlineSmall
                            ?.copyWith(color: Colors.white, fontSize: 30.sp)),
                  ),
                  HousingService(),
                  SpacingConst.vSpacing16,
                  Divider(
                    color: Colors.white,
                  ),
                  SpacingConst.vSpacing16,
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 10),
                    child: Text("Work Suggestions",
                        style: context.textThemes.headlineSmall
                            ?.copyWith(color: Colors.white, fontSize: 30.sp)),
                  ),
                  JobService(),
                ],
              );
            },
          ),
        ]
            // children: const [
            //   SectionTitle(title: 'Housing Services'),
            //   ServicesList(),
            //   SectionTitle(title: 'Housing Services'),
            //   TransactionList(),
            //   SizedBox(height: 15),
            // ],
            ),
      ),
    );
  }
}
