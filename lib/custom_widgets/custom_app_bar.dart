import 'package:barter_eth/utils/utilities.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:barter_eth/custom_colors.dart' as custom;

class CustomAppbar extends StatefulWidget {
  final bool isHomePage;
  final PassOpenDrawer? passOpenDrawer;
  const CustomAppbar({required this.isHomePage, Key? key, this.passOpenDrawer})
      : super(key: key);

  @override
  _CustomAppbarState createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              if (widget.isHomePage) {
                openDrawer(widget.passOpenDrawer);
              } else {
                Navigator.pop(context);
              }
            },
            icon: Icon(
              widget.isHomePage ? Icons.menu : Icons.arrow_back,
              size: 25,
            ),
          ),
          Expanded(child: Container()),
          Column(
            children: [
              Visibility(
                child: Text(
                  "Auction Ending in",
                  style: TextStyle(
                      color: custom.colors.secondary_blue.withOpacity(0.5),
                      fontSize: 12),
                ),
                visible: !widget.isHomePage,
              ),
              Text(
                widget.isHomePage ? "Explore" : "02h 13min 29sec",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                    color: custom.colors.secondary_blue),
              ),
            ],
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: Icon(
              widget.isHomePage ? Icons.circle : Icons.more_vert,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}

void openDrawer(PassOpenDrawer? passOpenDrawer) {
  print("open");

  if (passOpenDrawer != null) {
    passOpenDrawer.openDrawer();
  } else {
    SnackBar(content: Text("some error has occured"));
  }
}
