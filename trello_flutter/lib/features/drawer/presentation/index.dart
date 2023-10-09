import 'package:flutter/material.dart';
import 'package:trello_flutter/utils/color.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  backgroundColor: brandCOlor,
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Text('Inifome Seth'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Isethugbosu@gmail.com'),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            active = !active;
                          });
                        },
                        icon: Icon(active
                            ? Icons.keyboard_arrow_down
                            : Icons.keyboard_arrow_up))
                  ],
                ),
              ],
            ),
          ),
          active
              ? Column(
                  children: [
                    ListTile(
                      leading: const Icon(
                        Icons.pages,
                        color: brandCOlor,
                      ),
                      title: const Text('Boards',
                          style: TextStyle(
                              color: brandCOlor, fontWeight: FontWeight.bold)),
                      onTap: () {},
                    ),
                    const Divider(
                      height: 2,
                      color: brandCOlor,
                    ),
                    ListTile(
                      leading: const Icon(Icons.card_membership),
                      title: const Text('My Card'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.pages),
                      title: const Text('Offline boards'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.settings),
                      title: const Text('Settings'),
                      onTap: () {},
                    ),
                    ListTile(
                      leading: const Icon(Icons.help_outline_rounded),
                      title: const Text('Help!'),
                      onTap: () {},
                    ),
                  ],
                )
              : const ListTile(
                  leading: Icon(Icons.add),
                  title: Text('Add account'),
                ),
        ],
      ),
    );
  }
}
