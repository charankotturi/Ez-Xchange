import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../custom_colors.dart' as custom;

class PostCard extends StatefulWidget {
  const PostCard({Key? key}) : super(key: key);

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: (MediaQuery.of(context).size.width) / 2.2,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber[200],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "ThunderStruck",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: custom.colors.secondary_blue),
              ),
              SizedBox(height: 5),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 22,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "@UserNameddsdfsdsd",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              color: custom.colors.secondary_blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 9),
                        ),
                        SizedBox(height: 2),
                        Row(
                          children: [
                            Icon(Icons.pin_drop,
                                size: 11, color: Colors.black.withOpacity(0.5)),
                            SizedBox(
                              width: 2,
                            ),
                            Text("location",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 8,
                                  color: custom.colors.secondary_blue
                                      .withOpacity(0.8),
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(child: Container()),
                  InkWell(
                      onTap: () {},
                      child: Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "03 Biddings",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0.3, 0.3),
                                  blurRadius: 1.0,
                                  color: Colors.grey),
                            ],
                            borderRadius: BorderRadius.circular(10),
                            color: custom.colors.main_blue,
                            gradient: LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.bottomRight,
                              stops: [0.1, 0.5],
                              colors: [
                                custom.colors.main_blue.withOpacity(0.8),
                                custom.colors.main_blue,
                              ],
                            ),
                          )))
                ],
              ),
              Expanded(child: Container()),
              Container(
                  height: 1,
                  margin: const EdgeInsets.only(top: 5, bottom: 10),
                  color: custom.colors.secondary_blue.withOpacity(0.2)),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Auction Ending in:",
                            style: TextStyle(
                                color: custom.colors.secondary_blue
                                    .withOpacity(0.8),
                                fontSize: 8),
                          ),
                          Text(
                            "02 h 13min 12sec",
                            style: TextStyle(
                                color: custom.colors.secondary_blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 11),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Highest Bid:",
                            style: TextStyle(
                                color: custom.colors.secondary_blue
                                    .withOpacity(0.8),
                                fontSize: 8),
                          ),
                          Text(
                            "7.00 ETH",
                            style: TextStyle(
                                color: custom.colors.secondary_blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 11),
                          ),
                        ],
                      ),
                    ]),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue.withOpacity(0.2)),
      ),
    );
  }
}
