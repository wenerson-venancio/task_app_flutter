// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

import 'widgets/go_premium.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          GoPremium(),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'Tasks',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            margin: EdgeInsets.only(left: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('assets/images/avatar.jpg'),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Hi, Wenerson',
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      actions: const [
        Icon(
          Icons.more_vert,
          color: Colors.black,
        )
      ],
    );
  }
}
