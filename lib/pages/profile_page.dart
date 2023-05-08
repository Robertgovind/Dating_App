import 'package:live_chat/commons/my_info.dart';
import 'package:live_chat/commons/opaque_image.dart';
import 'package:live_chat/commons/profile_info_big_card.dart';
import 'package:live_chat/commons/profile_info_card.dart';
import 'package:live_chat/pages/all_matches.dart';
import 'package:live_chat/pages/details.dart';
import 'package:live_chat/pages/profile_visitors.dart';
import 'package:live_chat/pages/rematches_page.dart';
import 'package:live_chat/pages/super_likes_me_page.dart';
import 'package:live_chat/pages/unmatched_page.dart';
import 'package:live_chat/pages/new_matches_page.dart';
import 'package:live_chat/styles/colors.dart';
import 'package:live_chat/styles/textstyles.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Stack(
                  children: <Widget>[
                    OpaqueImage(
                      imageUrl: "assets/images/robert.jpg",
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Details(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "My Profile",
                                  textAlign: TextAlign.left,
                                  style: headingTextStyle,
                                ),
                              ),
                            ),
                            MyInfo(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 50),
                  color: Color.fromARGB(228, 211, 8, 184),
                  child: Table(
                    children: [
                      TableRow(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => MatchedMe(),
                                ),
                              );
                            },
                            child: ProfileInfoBigCard(
                              firstText: "15",
                              secondText: "New matches",
                              icon: Icon(
                                Icons.star,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => UnMatchedMe(),
                                ),
                              );
                            },
                            child: ProfileInfoBigCard(
                              firstText: "05",
                              secondText: "Unmatched me",
                              icon: Image.asset(
                                "assets/icons/sad_smiley.png",
                                width: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => AllMatches(),
                                ),
                              );
                            },
                            child: ProfileInfoBigCard(
                              firstText: " 25",
                              secondText: "All matches",
                              icon: Image.asset(
                                "assets/icons/checklist.png",
                                width: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Rematches(),
                                ),
                              );
                            },
                            child: ProfileInfoBigCard(
                              firstText: "08",
                              secondText: "Rematches",
                              icon: Icon(
                                Icons.refresh,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ProfileVisitors(),
                                ),
                              );
                            },
                            child: ProfileInfoBigCard(
                              firstText: "10M",
                              secondText: "Profile Visitors",
                              icon: Icon(
                                Icons.remove_red_eye,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => SuperLikesMePage(),
                                ),
                              );
                            },
                            child: ProfileInfoBigCard(
                              firstText: "10",
                              secondText: "Super likes",
                              icon: Icon(
                                Icons.favorite,
                                size: 32,
                                color: blueColor,
                              ),
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
          Positioned(
            top: screenHeight * (4 / 9) - 80 / 2,
            left: 16,
            right: 16,
            child: Container(
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  ProfileInfoCard(firstText: "98%", secondText: "Progress"),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoCard(
                    hasImage: true,
                    imagePath: "assets/icons/pulse.png",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ProfileInfoCard(firstText: "500", secondText: "Level"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
