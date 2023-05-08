import 'package:live_chat/commons/narrow_app_bar.dart';
import 'package:live_chat/styles/colors.dart';
import 'package:live_chat/styles/textstyles.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade300,
      appBar: NarrowAppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back),
        ),
        trailing: Text(
          "?",
          style: actionMenuStyle,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Details",
              style: headingTextStyle.copyWith(color: Colors.blue),
            ),
          ),
        ],
      ),
    );
  }
}
