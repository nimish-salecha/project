// In app notification  -- bell click  --  activity logs

import 'package:flutter/material.dart';
void main() {
  runApp(Activity());
}

// ignore: use_key_in_widget_constructors
class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dwidth = MediaQuery.of(context).size.width;
    final dheight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey[500],
          title: const Text('Activity Logs'),
        ),

        body: Column(),
      ),
    );
  }
}