import 'package:feedtheneed/screens/blog_description.dart';
import 'package:flutter/material.dart';

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
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Container(
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
                offset: const Offset(0, 4), // changes position of shadow
              ),
            ],
          ),
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(12),
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
                          builder: (context) => const BlogDescription(),
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
              )
            ],
          ),
        ));
  }
}
