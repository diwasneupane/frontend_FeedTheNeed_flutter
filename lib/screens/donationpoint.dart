import 'package:flutter/material.dart';

class DonationPoint extends StatefulWidget {
  const DonationPoint({Key? key}) : super(key: key);

  @override
  _DonationPointState createState() => _DonationPointState();
}

class _DonationPointState extends State<DonationPoint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          "Donation Point",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // decoration: BoxDecoration(
            //   // color: Color(0xFF41A2CD),
            //   border: Border.all(color: const Color(0xFF41A2CD)),
            //   borderRadius: const BorderRadius.only(
            //     bottomRight: Radius.circular(20),
            //     bottomLeft: Radius.circular(20),
            //   ),
            // ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    height: 300,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.08), BlendMode.dstIn),
                        image: const NetworkImage(
                          "https://img.freepik.com/free-vector/charity-doodle-vector-background-donation-concept_53876-143434.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                      // color: const Color(0xFF41A2CD),
                      // border: Border.all(color: const Color(0xFF41A2CD)),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset:
                              const Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Stack(
                          children: const [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://png.pngtree.com/png-vector/20191101/ourmid/pngtree-cartoon-color-simple-male-avatar-png-image_1934459.jpg"),
                              radius: 60,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "User",
                          style: TextStyle(
                            fontSize: 22,
                            // color: Colors.white,
                            // fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 1,
                          indent: 20,
                          endIndent: 20,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  "0.01",
                                  style: TextStyle(
                                    fontSize: 42,
                                    fontWeight: FontWeight.w300,
                                    // color: Colors.white.withOpacity(0.9),
                                  ),
                                ),
                                Text(
                                  "Donation Point",
                                  style: TextStyle(
                                    fontSize: 19,
                                    // fontWeight: FontWeight.bold,
                                    // color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text("#1",
                                    style: TextStyle(
                                      fontSize: 42,
                                      fontWeight: FontWeight.w300,
                                      // color: Colors.white.withOpacity(0.9),
                                    )),
                                Text("Rank",
                                    style: TextStyle(
                                      fontSize: 19,
                                      // fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                    )),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Leaderboard",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(color: const Color(0xFF41A2CD)),
                    ),
                    margin: const EdgeInsets.all(1),
                    child: SizedBox(
                      height: 300,
                      child: ListView.separated(
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Row(
                                children: const [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=580&q=80"),
                                  ),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text("Dhananjay Arne")
                                ],
                              ),
                              leading: Text(
                                "#${index + 1}",
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              ),
                              trailing: Text(
                                  "Rs.${(200000 / (index + 1)).toString().substring(0, 5)}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold)),
                            );
                          },
                          separatorBuilder: (context, index) => const Divider(
                                thickness: 1,
                                color: Color(0xFF41A2CD),
                                indent: 10,
                                endIndent: 10,
                              ),
                          itemCount: 12),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
