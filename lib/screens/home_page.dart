import 'package:barter_eth/custom_widgets/drawer.dart';
import 'package:barter_eth/list_item_widget/post_item.dart';
import 'package:barter_eth/screens/pages/create_new_post_page.dart';
import 'package:barter_eth/screens/pages/profile_page.dart';
import 'package:barter_eth/screens/pages/saved_posts_page.dart';
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
  int _selectedIndex = 0;
  var list = [ExplorePage(), CreatePostPage(), SavedPostsPage(), ProfilePage()];

  void changeNavIndex(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void openDrawer() {
    _keys.currentState!.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _keys,
      drawer: customDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_circle), label: "Create"),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Saved"),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: "Profile"),
        ],
        selectedItemColor: custom.colors.main_blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        onTap: changeNavIndex,
      ),
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
              list[_selectedIndex]
            ],
          ),
        ),
      ),
    );
  }
}

class ExplorePage extends StatefulWidget {
  const ExplorePage({
    Key? key,
  }) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                    child: PostCard());
              }),
        )
      ],
    );
  }
}
