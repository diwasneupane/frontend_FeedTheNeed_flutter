import 'package:feedtheneed/screens/login.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Profile",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 95,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF41A2CD),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 27,
                          backgroundImage: NetworkImage(
                              'https://static01.nyt.com/images/2022/09/16/arts/16CAMERON1/16CAMERON1-videoSixteenByNine3000.jpg'),
                        ),
                      ),
                      title: const Text(
                        "Email",
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: const Text("Username",
                          style: TextStyle(color: Colors.white)),
                      trailing: IconButton(
                        onPressed: () {
                          //action coe when button is pressed
                        },
                        icon: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.09),
                        spreadRadius: 0,
                        blurRadius: 44,
                        offset:
                            const Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        ListTile(
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
                            "My Account ",
                          ),
                          subtitle: const Text("Make changes to your account",
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
                        ListTile(
                          leading: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 241, 250, 253),
                              radius: 27,
                              child: Icon(
                                Icons.auto_graph,
                                color: Color(0xFF41A2CD),
                              ),
                            ),
                          ),
                          title: const Text(
                            "Donation Point ",
                          ),
                          subtitle: const Text("View your donation point",
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
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Login(),
                              ),
                            );
                          },
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
                              "Log out",
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
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "More",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.09),
                        spreadRadius: 0,
                        blurRadius: 44,
                        offset:
                            const Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        ListTile(
                          leading: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 241, 250, 253),
                              radius: 27,
                              child: Icon(
                                Icons.notifications_active_outlined,
                                color: Color(0xFF41A2CD),
                              ),
                            ),
                          ),
                          title: const Text(
                            "Help & Support",
                          ),
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
                        ListTile(
                          leading: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 241, 250, 253),
                              radius: 27,
                              child: Icon(
                                Icons.favorite_border,
                                color: Color(0xFF41A2CD),
                              ),
                            ),
                          ),
                          title: const Text(
                            "About App ",
                          ),
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
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
