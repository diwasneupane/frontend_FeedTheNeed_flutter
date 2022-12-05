import 'package:feedtheneed/screens/blog_description.dart';
import 'package:flutter/material.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Recent News',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            // margin: const EdgeInsets.all(8),
            // margin: const EdgeInsets.all(2),
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: TextField(
                        cursorColor: const Color(0xFF41A2CD),
                        decoration: InputDecoration(
                            fillColor: const Color.fromARGB(255, 224, 224, 224),
                            filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide.none),
                            hintText: 'Search',
                            hintStyle: const TextStyle(
                                color: Colors.grey, fontSize: 18),
                            prefixIcon: Container(
                              padding: const EdgeInsets.all(15),
                              width: 18,
                              child: const Icon(Icons.search),
                            )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Column(
                    // padding: const EdgeInsets.only(top: 8.0),
                    children: [
                      Stories(
                        circlePadding: 2,
                        storyItemList: [
                          StoryItem(
                              name: "First Story",
                              thumbnail: const NetworkImage(
                                "https://assets.materialup.com/uploads/82eae29e-33b7-4ff7-be10-df432402b2b6/preview",
                              ),
                              stories: [
                                Scaffold(
                                  body: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          "https://wallpaperaccess.com/full/16568.png",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Scaffold(
                                  body: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                          "https://i.pinimg.com/originals/2e/c6/b5/2ec6b5e14fe0cba0cb0aa5d2caeeccc6.jpg",
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                          StoryItem(
                            name: "2nd",
                            thumbnail: const NetworkImage(
                              "https://www.shareicon.net/data/512x512/2017/03/29/881758_cup_512x512.png",
                            ),
                            stories: [
                              Scaffold(
                                body: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        "https://i.pinimg.com/originals/31/bc/a9/31bca95ba39157a6cbf53cdf09dda672.png",
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const Scaffold(
                                backgroundColor: Colors.black,
                                body: Center(
                                  child: Text(
                                    "That's it, Folks !",
                                    style: TextStyle(
                                      color: Color(0xffffffff),
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Container(
                    height: 95,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.06),
                          spreadRadius: 0,
                          blurRadius: 4,
                          offset:
                              const Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 90,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(11.0),
                            child: Image.network(
                              "https://i.pinimg.com/originals/87/b6/e3/87b6e3ebf4d64dc72392e50a9f74bf84.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 18),
                        Expanded(
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  "Feeding arun valley child orphanages",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text("Category")
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const BlogDescription(),
                                  ),
                                );
                                //action coe when button is pressed
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF41A2CD),
                                size: 16,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
