import 'package:feedtheneed/repositories/blog_repository.dart';
import 'package:feedtheneed/utils/api_url.dart';
import 'package:flutter/material.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';

class BlogScreen extends StatefulWidget {
  const BlogScreen({Key? key}) : super(key: key);

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  String searchQuery = "";
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
      body: SingleChildScrollView(
        child: Column(
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
                        child: TextFormField(
                          onChanged: (value) {
                            setState(() {
                              searchQuery = value;
                            });
                          },
                          cursorColor: const Color(0xFF41A2CD),
                          decoration: InputDecoration(
                              fillColor:
                                  const Color.fromARGB(255, 224, 224, 224),
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
                                name: "Kfc",
                                thumbnail: const NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/sco/thumb/b/bf/KFC_logo.svg/1200px-KFC_logo.svg.png",
                                ),
                                stories: [
                                  Scaffold(
                                    body: Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          // fit: BoxFit.cover,
                                          image: NetworkImage(
                                            "https://upload.wikimedia.org/wikipedia/sco/thumb/b/bf/KFC_logo.svg/1200px-KFC_logo.svg.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Scaffold(
                                    body: Container(
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          // fit: BoxFit.cover,
                                          image: NetworkImage(
                                            "https://seeklogo.com/images/K/KFC-_Kentucky_Fried_Chicken-logo-999BFAB6E5-seeklogo.com.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                            StoryItem(
                              name: "Tvs",
                              thumbnail: const NetworkImage(
                                "https://1000logos.net/wp-content/uploads/2020/07/TVS-Motor-Logo.jpg",
                              ),
                              stories: [
                                Scaffold(
                                  body: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        // fit: BoxFit.cover,
                                        image: NetworkImage(
                                          "https://media.zigcdn.com/media/content/2022/Oct/cover_63500158d6a81_640x480.png",
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
                  FutureBuilder<List<dynamic>>(
                    future: BlogRepository().getBlogs(),
                    builder: (context, snapshot) {
                      // debugPrint(snapshot.data.toString());
                      if (snapshot.connectionState == ConnectionState.done) {
                        if (snapshot.data != null) {
                          List<dynamic> lstblog = snapshot.data!;
                          // debugPrint("dsfsjnj${lstblog.length}");
                          return SizedBox(
                            height: MediaQuery.of(context).size.height * 0.53,
                            child: ListView.builder(
                              itemCount: lstblog.length,
                              itemBuilder: (BuildContext context, int index) {
                                String? blogid = lstblog[index]["_id"];
                                return snapshot.data![index]!["blog_name"]!
                                        .toLowerCase()
                                        .contains(searchQuery.toLowerCase())
                                    ? Padding(
                                        padding:
                                            const EdgeInsets.only(top: 15.0),
                                        child: Container(
                                          height: 95,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(
                                                255, 255, 255, 255),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.06),
                                                spreadRadius: 0,
                                                blurRadius: 4,
                                                offset: const Offset(0,
                                                    4), // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 90,
                                                width: 100,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          11.0),
                                                  child: Image.network(
                                                    "$baseUrl${lstblog[index]["blog_image"]!}",
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 18),
                                              Expanded(
                                                child: Container(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        lstblog[index]
                                                            ["blog_name"],
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Text(
                                                        lstblog[index]
                                                            ["blog_category"],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width: 8),
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  IconButton(
                                                    onPressed: () {
                                                      Navigator.pushNamed(
                                                          context,
                                                          '/blogdescription',
                                                          arguments: blogid);
                                                      //action coe when button is pressed
                                                    },
                                                    icon: const Icon(
                                                      Icons
                                                          .arrow_forward_ios_outlined,
                                                      color: Color(0xFF41A2CD),
                                                      size: 16,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    : const SizedBox();
                              },
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
                            valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xff754A4A)),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
