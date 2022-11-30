import 'package:flutter/material.dart';

class BlogDescription extends StatefulWidget {
  const BlogDescription({Key? key}) : super(key: key);

  @override
  State<BlogDescription> createState() => _BlogDescriptionState();
}

class _BlogDescriptionState extends State<BlogDescription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Recent News',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 20),
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Column(
              children: [
                const Text(
                  // headline6,
                  "Feeding arun valley child orphanage",
                  style: TextStyle(
                    color: Color.fromARGB(255, 80, 80, 80),
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          // side: const BorderSide(
                          //   color: Color.fromARGB(255, 217, 217, 217),
                          //   width: 1,
                          // ),
                        ),
                        clipBehavior: Clip.none,
                        key: const ValueKey(["id"]),
                        // margin: EdgeInsets.all(5),
                        color: const Color.fromARGB(255, 243, 243, 243),
                        child: const ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 27,
                              backgroundImage: NetworkImage(
                                  "https://w.wallhaven.cc/full/v9/wallhaven-v9kw9l.jpg"),
                            ),
                          ),
                          title: Text(
                            "User Name",
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(
                            "Category",
                            style: TextStyle(color: Colors.black),
                          ),
                          trailing: Text('Amount(Rs)'),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    // color: const Color(0xff7c94b6),
                    image: const DecorationImage(
                      image: NetworkImage(
                          'https://www.daysoftheyear.com/wp-content/uploads/international-day-of-charity-1.jpg'),
                      fit: BoxFit.cover,
                    ),

                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          height: 1.7,
                          wordSpacing: 2,
                        ),
                      ),
                    ],
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
