import 'package:feedtheneed/screens/khaltiscreen.dart';
import 'package:flutter/material.dart';

class Donate extends StatefulWidget {
  const Donate({super.key});

  @override
  State<Donate> createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.teal,
          shadowColor: Colors.red,
          elevation: 5,
        ),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const KhaltiPaymentScreen(),
          ),
        ),
        child: const Text('Khalti '),
      )),
    );
  }
}
