import 'package:alibaba/screens/home_screen.dart';
import 'package:alibaba/widgets/card_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardList extends ConsumerWidget {
  const CardList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);
    return user.when(data: ((data) {
      return SizedBox(
        height: 180,
        width: 120.w,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: data.courses.length,
          itemBuilder: (context, index) {
            var item = data.courses.values.toList()[index];
            var item2 = data.courses.keys.toList()[index];

            return CardItem(
              logo: "",
              number: item.toString(),
              holder: item2,
              type: "",
            );
          },
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
