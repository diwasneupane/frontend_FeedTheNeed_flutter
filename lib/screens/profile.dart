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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Profile",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
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
                    offset: const Offset(0, 4), // changes position of shadow
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
              height: 80,
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
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 27,
                          child: Icon(
                            Icons.person_outline,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      title: const Text(
                        "Email",
                      ),
                      subtitle: const Text("Username",
                          style: TextStyle(color: Colors.blueGrey)),
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
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
