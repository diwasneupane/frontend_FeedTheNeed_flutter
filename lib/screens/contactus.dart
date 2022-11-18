import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
          "My Information",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 70.0,
                    backgroundColor: Colors.transparent,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset('assets/images/logo.png'),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'FeedTheNeed',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'feedtheneed@gmail.com',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                // alignment: Alignment.centerLeft,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Conpany Contact Information",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Expanded(
                            child: Text(
                              'Company Name',
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ]),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      "Company Address",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      "Company Phone Number",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    const Text(
                      "Company Founded on",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
