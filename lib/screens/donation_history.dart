import 'package:flutter/material.dart';

class DonationHistory extends StatefulWidget {
  const DonationHistory({Key? key}) : super(key: key);

  @override
  State<DonationHistory> createState() => _DonationHistoryState();
}

class _DonationHistoryState extends State<DonationHistory> {
  final List<String> items = List<String>.generate(10, (i) => '$i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "My Donation",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 18.0,
          right: 18,
          top: 18,
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Total Donation:",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Rs. 1,00,000",
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF41A2CD),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Recent Donation",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 411,
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 251, 250, 250),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.06),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 4), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            leading: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.06),
                                    spreadRadius: 1,
                                    blurRadius: 6,
                                    offset: const Offset(
                                        3, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: const CircleAvatar(
                                backgroundColor: Colors.transparent,
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            title: Text(
                              'Transaction ${items[index]}',
                              style: const TextStyle(color: Color(0xFF41A2CD)),
                            ),
                            subtitle: const Text('Item description'),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_outlined,
                            ),
                          ),
                        ),
                        const Padding(
                            padding: EdgeInsets.only(
                          bottom: 20,
                        ))
                      ],
                    );
                  },
                ),
              )
            ]),
      ),
    );
  }
}
