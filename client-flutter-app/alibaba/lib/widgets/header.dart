import 'package:alibaba/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../constant.dart';

class Header extends ConsumerWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return user.when(data: ((data) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: kSecondaryColor,
        ),
        height: 245,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(
          left: 36,
          top: 30,
          right: 30,
        ),
        child: Column(
          children: [
            FadeInUp(
              duration: const Duration(milliseconds: 500),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Back!',
                        style: kSFUI16,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        data.name,
                        style: kName,
                      ),
                    ],
                  ),
                  Image.asset(
                    'assets/images/profile.png',
                    scale: 4,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeInUp(
                  duration: const Duration(milliseconds: 700),
                  child: Text(
                    'Bio',
                    style: kSFUI16.copyWith(
                      color: Colors.white30,
                    ),
                  ),
                ),
                const SizedBox(height: 7),
                FadeInUp(
                  duration: const Duration(milliseconds: 700),
                  child: Text(
                    data.job,
                    style: kBalance,
                  ),
                ),
                const SizedBox(height: 7),
                FadeInUp(
                  duration: const Duration(milliseconds: 700),
                  child: Text(
                    "${data.country}, ${data.city}",
                    style: kSFUI16.copyWith(
                      color: Colors.white30,
                    ),
                  ),
                ),
              ],
            ),
          ],
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
