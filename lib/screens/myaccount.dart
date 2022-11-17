import 'package:feedtheneed/screens/login.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
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
          "My Account",
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
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Color.fromARGB(255, 81, 81, 81),
                    child: CircleAvatar(
                      radius: 38,
                      backgroundImage: NetworkImage(
                          'https://static01.nyt.com/images/2022/09/16/arts/16CAMERON1/16CAMERON1-videoSixteenByNine3000.jpg'),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'John Snow',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'johnsnow@gmail.com',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            const SizedBox(height: 60),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.09),
                      spreadRadius: 0,
                      blurRadius: 44,
                      offset: const Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          leading: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 241, 250, 253),
                              radius: 27,
                              child: Icon(
                                Icons.person_outline,
                                color: Color(0xFF41A2CD),
                              ),
                            ),
                          ),
                          title: const Text(
                            "Your Information",
                          ),
                          subtitle: const Text(
                              "See Your Information Within This Application",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 10)),
                          trailing: IconButton(
                            onPressed: () {
                              //action coe when button is pressed
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      ListTile(
                        leading: const CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                            backgroundColor: Color.fromARGB(255, 241, 250, 253),
                            radius: 27,
                            child: Icon(
                              Icons.account_balance_wallet_outlined,
                              color: Color(0xFF41A2CD),
                            ),
                          ),
                        ),
                        title: const Text(
                          "Donation History ",
                        ),
                        subtitle: const Text("See Your Donation History",
                            style: TextStyle(
                                color: Colors.blueGrey, fontSize: 10)),
                        trailing: IconButton(
                          onPressed: () {
                            //action coe when button is pressed
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_right_outlined,
                            color: Colors.blueGrey,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () {},
                        child: ListTile(
                          leading: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 241, 250, 253),
                              radius: 27,
                              child: Icon(
                                Icons.logout_outlined,
                                color: Color(0xFF41A2CD),
                              ),
                            ),
                          ),
                          title: const Text(
                            "Change Password",
                          ),
                          subtitle: const Text(
                              "Further secure your account for safety",
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 10)),
                          trailing: IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()),
                              ); //action coe when button is pressed
                            },
                            icon: const Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
