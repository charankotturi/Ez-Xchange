import 'package:barter_eth/custom_widgets/drawer.dart';
import 'package:barter_eth/utils/utilities.dart';
import 'package:flutter/material.dart';
import '../custom_colors.dart' as custom;
import 'package:barter_eth/custom_widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> implements PassOpenDrawer {
  final GlobalKey<ScaffoldState> _keys = GlobalKey();

  @override
  void openDrawer() {
    _keys.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keys,
      drawer: customDrawer(),
      backgroundColor: Colors.white.withOpacity(0.95),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              CustomAppbar(isHomePage: true, passOpenDrawer: this),
              Container(
                margin: const EdgeInsets.only(top: 10),
                color: custom.colors.secondary_blue.withOpacity(0.2),
                height: 1,
                width: MediaQuery.of(context).size.width,
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: _CustomHeaderAndList(
                    headingTxt: "Trending Auctions",
                  )),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: _CustomHeaderAndList(
                    headingTxt: "Feature Artworks",
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

class _CustomHeaderAndList extends StatefulWidget {
  final String headingTxt;
  const _CustomHeaderAndList({Key? key, required this.headingTxt})
      : super(key: key);

  @override
  __CustomHeaderAndListState createState() => __CustomHeaderAndListState();
}

class __CustomHeaderAndListState extends State<_CustomHeaderAndList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text(
            widget.headingTxt,
            style: TextStyle(
                color: custom.colors.secondary_blue,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5,
          ),
          Icon(Icons.local_fire_department, color: Colors.red, size: 25),
          Expanded(child: Container()),
          Text("View all",
              style: TextStyle(
                color: custom.colors.main_blue,
                fontSize: 12,
              )),
        ]),
        SizedBox(
          height: 5,
        ),
        Container(
          height: MediaQuery.of(context).size.height / 2.4,
          color: Colors.red.withOpacity(0.2),
          width: MediaQuery.of(context).size.width,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/post_details');
                  },
                  child: Padding(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("role",
                                          style: TextStyle(
                                            fontSize: 8,
                                            color: custom.colors.secondary_blue
                                                .withOpacity(0.8),
                                          )),
                                      Text(
                                        "@UserNameddsdfsdsd",
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: custom.colors.secondary_blue,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 9),
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
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: custom.colors.main_blue,
                                          gradient: LinearGradient(
                                            begin: Alignment.centerLeft,
                                            end: Alignment.bottomRight,
                                            stops: [0.1, 0.5],
                                            colors: [
                                              custom.colors.main_blue
                                                  .withOpacity(0.8),
                                              custom.colors.main_blue,
                                            ],
                                          ),
                                        )))
                              ],
                            ),
                            Expanded(child: Container()),
                            Container(
                                height: 1,
                                margin:
                                    const EdgeInsets.only(top: 5, bottom: 10),
                                color: custom.colors.secondary_blue
                                    .withOpacity(0.2)),
                            Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Auction Ending in:",
                                          style: TextStyle(
                                              color: custom
                                                  .colors.secondary_blue
                                                  .withOpacity(0.8),
                                              fontSize: 8),
                                        ),
                                        Text(
                                          "02 h 13min 12sec",
                                          style: TextStyle(
                                              color:
                                                  custom.colors.secondary_blue,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 11),
                                        ),
                                      ],
                                    ),
                                    Expanded(child: Container()),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Highest Bid:",
                                          style: TextStyle(
                                              color: custom
                                                  .colors.secondary_blue
                                                  .withOpacity(0.8),
                                              fontSize: 8),
                                        ),
                                        Text(
                                          "7.00 ETH",
                                          style: TextStyle(
                                              color:
                                                  custom.colors.secondary_blue,
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
                  ),
                );
              }),
        )
      ],
    );
  }
}
