import 'package:alibaba/widgets/cards_list.dart';
import 'package:alibaba/widgets/header.dart';
import 'package:alibaba/widgets/section_title.dart';
import 'package:alibaba/widgets/text_info.dart';
import 'package:alibaba/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: const [
            Header(),
            SizedBox(height: 40),
            SectionTitle(title: 'Transactions'),
            SizedBox(height: 20),
            TransactionList(),
            SizedBox(height: 15),
            TextInfo(title: 'See all transaction details'),
            SizedBox(height: 25),
            SectionTitle(title: 'Cards'),
            SizedBox(height: 20),
            CardsList(),
            SizedBox(height: 25),
            TextInfo(title: 'Swipe up for more'),
          ],
        ),
      ),
    );
  }
}
