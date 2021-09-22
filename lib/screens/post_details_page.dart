import 'package:barter_eth/custom_widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:barter_eth/custom_colors.dart' as custom;

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          onPressed: () {},
          label: Text("Place a Bid  |  7.01 ETH")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white.withOpacity(0.95),
      body: ListView(
        children: [
          CustomAppbar(
            isHomePage: false,
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: MediaQuery.of(context).size.height / 3,
              color: Colors.black),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              "ThunderStruck",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: custom.colors.secondary_blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 5.0, left: 20, right: 20, bottom: 10),
            child: Row(
              children: [
                Icon(
                  Icons.circle,
                  size: 25,
                ),
                SizedBox(width: 10),
                Text("@username",
                    style: TextStyle(
                      fontSize: 12,
                      color: custom.colors.secondary_blue.withOpacity(0.5),
                    )),
                Expanded(child: Container()),
                Column(
                  children: [
                    Text("Highest Eth",
                        style: TextStyle(
                          fontSize: 12,
                          color: custom.colors.secondary_blue.withOpacity(0.5),
                        )),
                    Text("7.00 Eth",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: custom.colors.secondary_blue,
                        )),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 20, bottom: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Description",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: custom.colors.secondary_blue,
                    )),
                Text(
                    "lopai\nps\n/nadsf\\nnadfadf\nadfadfads\nadfdfadf\nadsfds\nadfadsfd",
                    style: TextStyle(
                      fontSize: 12,
                      color: custom.colors.secondary_blue.withOpacity(0.9),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
