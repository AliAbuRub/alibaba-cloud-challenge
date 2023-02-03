import 'dart:convert';

import 'package:alibaba/features/login/domain/user_data.dart';
import 'package:alibaba/screens/aaa.dart';
import 'package:alibaba/widgets/transaction_item.dart';
import 'package:alibaba/widgets/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:alibaba/widgets/header.dart';
import 'package:alibaba/widgets/section_title.dart';
import 'package:alibaba/widgets/card_list.dart';
import 'package:alibaba/widgets/buttons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;

final userProvider = FutureProvider<UserData>((ref) async {
  String url = "http://8.213.19.127/data?id=398-19-6732";
  final response = await http.get(Uri.parse(url));

  var responseData = json.decode(response.body);

  print(responseData);
  return UserData.fromJson(responseData);
});

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return Scaffold(
      body: SafeArea(
          child: user.when(
        error: (error, stackTrace) {
          return const Text("Error");
        },
        loading: () {
          return Center(
            child: Column(
              children: const [Text("Loading"), CircularProgressIndicator()],
            ),
          );
        },
        data: (data) {
          return ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const Header(),
              // FadeInUp(
              //   child: SizedBox(
              //     height: 500,
              //     child: Image.asset(
              //       'assets/images/saudi_avatar.png',
              //     ),
              //   ),
              // ),
              const SizedBox(height: 20),
              const SectionTitle(title: 'Basic Info'),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: ListView(
                  children: [
                    TransactionItem(
                      logo: "2",
                      type: data.degree,
                      percent: "4",
                      value: "5",
                      icon: Icons.high_quality,
                    ),
                    TransactionItem(
                      logo: "2",
                      type: data.health_history,
                      percent: "4",
                      value: "5",
                      icon: Icons.health_and_safety,
                    ),
                    TransactionItem(
                      logo: "2",
                      type: "Graduated at: ${data.graduation_year}",
                      percent: "4",
                      value: "5",
                      icon: Icons.school_rounded,
                    ),
                    TransactionItem(
                      logo: "2",
                      type: data.university,
                      percent: "4",
                      value: "5",
                      icon: Icons.business,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const SectionTitle(title: 'My Courses'),
              const SizedBox(height: 15),
              const CardList(),
              const SizedBox(height: 40),
              const Buttons(),
              const SizedBox(height: 30),
              SizedBox(
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    SectionTitle(title: 'Interests'),
                    TransactionList(),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              // Chart(),
            ],
          );
        },
      )),
    );
  }
}
