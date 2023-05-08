import 'package:live_chat/commons/narrow_app_bar.dart';
import 'package:live_chat/styles/colors.dart';
import 'package:live_chat/styles/textstyles.dart';
import 'package:flutter/material.dart';

class SuperLikesMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      appBar: NarrowAppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back),
        ),
        trailing: Text(
          "SELECT",
          style: actionMenuStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Super Liked Me",
              style: headingTextStyle.copyWith(color: Colors.blue),
            ),
          ),
          Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search Who liked Me",
                    hintStyle:
                        blueSubHeadingTextStyle.copyWith(color: hintTextColor)),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: <Widget>[
                  Text(
                    "Super likes",
                    style: subTitleStyle.copyWith(color: Colors.black),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor),
                    child: Center(
                      child: Text(
                        "10",
                        style: blueSubHeadingTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "1h",
                    style: subTitleStyle.copyWith(color: Colors.black),
                  ),
                ],
              )),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.amber.shade300,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: ListTile(
                    title: Text(
                      "Robert",
                      style: titleStyle,
                    ),
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Image.asset(
                          "assets/icons/location_pin.png",
                          width: 15.0,
                          height: 15.0,
                          color: Colors.black,
                        ),
                        Text(
                          "  1 kilometers",
                          style: blueSubHeadingTextStyle.copyWith(
                              color: Colors.black, fontSize: 14),
                        ),
                      ],
                    ),
                    leading: ClipOval(
                      child: Image.asset(
                        "assets/images/robert.jpg",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 75,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 15,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "ONLINE",
                                  style: blueSubHeadingTextStyle.copyWith(
                                      color: Colors.green, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Icon(
                              Icons.star,
                              color: blueColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
