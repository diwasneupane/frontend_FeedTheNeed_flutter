import 'package:flutter/material.dart';

class DonationHistory extends StatefulWidget {
  const DonationHistory({Key? key}) : super(key: key);

  @override
  State<DonationHistory> createState() => _DonationHistoryState();
}

class _DonationHistoryState extends State<DonationHistory> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "this is donation history",
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
