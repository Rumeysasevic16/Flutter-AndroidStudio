import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/home_appbar.dart';
import 'package:whatsapp/widgets/send_message_area.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List list = [
    {
      "isMe": true,
      "message": "q",
      "date": DateTime.now(),
    },
    {
      "isMe": false,
      "message": "r",
      "date": DateTime.now(),
    },
    {
      "isMe": true,
      "message": "t",
      "date": DateTime.now(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisAlignment: list[index]["isMe"]
                        ? MainAxisAlignment.end
                        : MainAxisAlignment.start,
                    children: [
                      Text(
                        list[index]["message"],
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  );
                },
              ),
            ),
            SendMessageArea(),
          ],
        ),
      ),
    );
  }
}