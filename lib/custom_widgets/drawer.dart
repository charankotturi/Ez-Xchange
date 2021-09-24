import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:barter_eth/custom_colors.dart' as custom;

Drawer customDrawer() {
  return Drawer(
    child: Container(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: custom.colors.main_blue,
                  borderRadius: BorderRadius.circular(10)),
              accountName: Text("Naga Charan Kotturi"),
              accountEmail: Text("@ColorshelloCoolent"),
              currentAccountPicture: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.add_circle),
            title: Text("Create New Post"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text("Your Posts"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text("About us"),
            onTap: () {},
          ),
        ],
      ),
    ),
  );
}
