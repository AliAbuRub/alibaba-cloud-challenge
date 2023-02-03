import 'package:alibaba/screens/home_screen.dart';
import 'package:alibaba/widgets/progress_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TransactionList extends ConsumerWidget {
  const TransactionList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return user.when(data: ((data) {
      return SizedBox(
        height: data.intersts.length * 85,
        width: double.infinity,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: data.intersts.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            var item = data.intersts.keys.toList()[index];
            var item2 = data.intersts.values.toList()[index];
            return ProgressItem(
              logo: "",
              type: item,
              percent: "",
              value: item2 / 100,
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
