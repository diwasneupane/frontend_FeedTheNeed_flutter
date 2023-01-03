import 'package:feedtheneed/repositories/partner_reporitory.dart';
import 'package:feedtheneed/utils/api_url.dart';
import 'package:flutter/material.dart';
import 'package:stories_for_flutter/stories_for_flutter.dart';

class PartnerWidget extends StatefulWidget {
  const PartnerWidget({super.key});

  @override
  State<PartnerWidget> createState() => _PartnerWidgetState();
}

class _PartnerWidgetState extends State<PartnerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>>(
        future: PartnerRepository().getPartner(),
        builder: (context, snapshot) {
          // debugPrint(snapshot.data.toString());
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.data != null) {
              List<dynamic> lstPartner = snapshot.data!;

              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.53,
                child: ListView.builder(
                  itemCount: lstPartner.length,
                  itemBuilder: (BuildContext context, int index) {
                    String? partnerid = lstPartner[index]["_id"];
                    return snapshot.data![index]!["partner_name"]!
                        ? Padding(
                            padding: const EdgeInsets.only(top: 15.0),
                            child: Column(
                              // padding: const EdgeInsets.only(top: 8.0),
                              children: [
                                Stories(
                                  circlePadding: 2,
                                  storyItemList: [
                                    StoryItem(
                                      name: lstPartner[index]["partner_name"],
                                      thumbnail: NetworkImage(
                                        "$baseUrl${lstPartner[index]["partner_image"]!}",
                                      ),
                                      stories: [
                                        Scaffold(
                                          body: Container(
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                // fit: BoxFit.cover,
                                                image: NetworkImage(
                                                  "$baseUrl${lstPartner[index]["banner_image"]!}",
                                                ),
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
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xff754A4A)),
              ),
            );
          }
        },
      ),
    );
  }
}
