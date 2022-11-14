import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DonationHistory extends StatefulWidget {
  const DonationHistory({Key? key}) : super(key: key);

  @override
  State<DonationHistory> createState() => _DonationHistoryState();
}

class _DonationHistoryState extends State<DonationHistory> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("Donation History"),
    );
  }
}
