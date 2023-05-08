import 'package:live_chat/commons/radial_progress.dart';
import 'package:live_chat/commons/rounded_image.dart';
import 'package:live_chat/pages/details.dart';
import 'package:live_chat/styles/textstyles.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadialProgress(
            width: 6,
            goalCompleted: 0.95,
            child: RoundedImage(
              imagePath: "assets/images/robert.jpg",
              size: Size.fromWidth(120.0),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Robert Govind",
                style: blueNameTextStyle,
              ),
              Text(
                ", 21",
                style: blueNameTextStyle,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/icons/location_pin.png",
                width: 20.0,
                color: Colors.blue,
              ),
              Text(
                "  1 kilometers",
                style: blueSubHeadingTextStyle,
              )
            ],
          ),
        ],
      ),
    );
  }
}
