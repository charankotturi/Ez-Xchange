import 'package:barter_eth/screens/home_page.dart';
import 'package:barter_eth/screens/post_details_page.dart';
import 'package:barter_eth/screens/posts_page.dart';
import 'package:barter_eth/utils/posts_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => HomePage());
      case "/post_details":
        return MaterialPageRoute(builder: (_) => PostPage());
      case "/posts":
        if (args is PostCategory) {
          return MaterialPageRoute(
              builder: (_) => PostsPage(
                    postsCategory: args,
                  ));
        } else {
          return MaterialPageRoute(
              builder: (_) => Center(
                    child: Text("No Such Item in this Category!"),
                  ));
        }
      default:
        return MaterialPageRoute(
            builder: (_) => Center(
                  child: Text("Shit has occured!"),
                ));
    }
  }
}
