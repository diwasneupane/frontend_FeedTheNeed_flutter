import 'package:feedtheneed/model/user_transaction.dart';
import 'package:feedtheneed/repositories/user_transaction_repository.dart';
import 'package:feedtheneed/screens/refund_screen.dart';
import 'package:flutter/material.dart';

class DonationHistory extends StatefulWidget {
  const DonationHistory({Key? key}) : super(key: key);

  @override
  State<DonationHistory> createState() => _DonationHistoryState();
}

class _DonationHistoryState extends State<DonationHistory> {
  List<int> total_donation = [];
  final int _total_user_donation = 0;

  // @override
  // void initState() {
  //   setState(() {});
  //   super.initState();
  // }

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
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.70,
              child: FutureBuilder<List<UserTransaction?>>(
                future: UserTransactionRepository().userTransactionDetails(),
                builder: (context, snapshot) {
                  // debugPrint(snapshot.data.toString());
                  if (snapshot.connectionState == ConnectionState.done) {
                    total_donation = [];
                    if (snapshot.data != null) {
                      List<UserTransaction?> lstTransaction = snapshot.data!;
                      debugPrint("dsfsjnj${lstTransaction.length}");
                      // total(int index) {
                      int totalUserDonation = 0;

                      // total_user_transaction(
                      //     lstTransaction[index]!.donation_amount!);
                      for (int i = 0; i < snapshot.data!.length; i++) {
                        totalUserDonation +=
                            lstTransaction[i]!.donation_amount!;
                      }
                      // totalUserDonation =
                      //     lstTransaction[index]!.donation_amount! +
                      //         totalUserDonation;

                      // debugPrint("Total DOnation : $totalUserDonation");
                      // debugPrint("tRANSACTION lIST$total_donation");
                      // setState(() {
                      //   _total_user_donation = totalUserDonation;
                      // });
                      // }

                      return SizedBox(
                        height: 800,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Total Donation",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              totalUserDonation.toString(),
                              style: const TextStyle(
                                fontSize: 24,
                                color: Color(0xFF41A2CD),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20,
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
                              height:
                                  MediaQuery.of(context).size.height * 0.546,
                              child: ListView.builder(
                                itemCount: lstTransaction.length,
                                itemBuilder: (context, index) {
                                  // total(index);
                                  return Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 75,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color.fromARGB(
                                              255, 251, 250, 250),
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.black
                                                  .withOpacity(0.06),
                                              spreadRadius: 1,
                                              blurRadius: 3,
                                              offset: const Offset(0,
                                                  4), // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: ListTile(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          leading: Container(
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black
                                                      .withOpacity(0.06),
                                                  spreadRadius: 1,
                                                  blurRadius: 6,
                                                  offset: const Offset(3,
                                                      3), // changes position of shadow
                                                ),
                                              ],
                                            ),
                                            child: const CircleAvatar(
                                              backgroundColor:
                                                  Colors.transparent,
                                              child: Icon(
                                                Icons.shopping_cart,
                                                color: Colors.blueGrey,
                                              ),
                                            ),
                                          ),
                                          title: Text(
                                            lstTransaction[index]!
                                                .donation_amount!
                                                .toString(),
                                            style: const TextStyle(
                                                color: Color(0xFF41A2CD),
                                                fontSize: 20),
                                          ),
                                          // SizedBox(
                                          //   width: MediaQuery.of(context)
                                          //           .size
                                          //           .width *
                                          //       0.28,
                                          // ),

                                          subtitle: Row(
                                            children: [
                                              Text(
                                                  // DateFormat('MMM-d-y hh:mm a')
                                                  //     .format(DateTime(

                                                  //             as int)),
                                                  lstTransaction[index]!
                                                      .created_at
                                                      .toString()
                                                  // 'Transaction ${items[index]}',
                                                  ),
                                              const Text(
                                                "•",
                                                style: TextStyle(fontSize: 30),
                                              ),
                                              Text(
                                                lstTransaction[index]!
                                                    .donation_status!,

                                                // 'Transaction ${items[index]}',
                                                style: const TextStyle(
                                                    color: Color(0xFF41A2CD)),
                                              )
                                            ],
                                          ),

                                          trailing: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const RefundRequest(),
                                                  ));
                                            },
                                            child: const Icon(
                                              Icons.cancel_outlined,
                                            ),
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
                            ),
                          ],
                        ),
                      );
                    } else {
                      return const Center(
                        child: Text("No data"),
                      );
                    }
                  } else if (snapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(Color(0xff754A4A)),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // void total_user_transaction(int amount) {
  //   setState(() {
  //     total_user_donation = amount + total_user_donation;
  //   });
  // }
}
