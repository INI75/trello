import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:trello_flutter/features/drawer/presentation/index.dart';
import 'package:trello_flutter/utils/color.dart';
import 'package:trello_flutter/utils/config.dart';
import 'package:trello_flutter/utils/service.dart';
import 'package:trello_flutter/utils/widgets.dart';

import 'customFloatingAction.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with Service {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Boards'),
        
        actions: [
          IconButton(
            onPressed: () {
              search(context);
            },
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),

      drawer: const  CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              tileColor: whiteShade,
              leading: const Text('Workspace 1'),
              trailing: IconButton(
                onPressed: () {
                  // Navigate to workspace menu screen
                },
                icon: const Icon(Icons.more_horiz),
              ),
            ),
            ListTile(
              leading: ColorSquare(bckgrd: backgrounds[0]),
              title: const Text('Board 1'),
              onTap: () {},
            )
          ],
        ),
      ),
      floatingActionButtonLocation: ExpandableFab.location,
      floatingActionButton: ExpandableFab(
          type: ExpandableFabType.up,
          openButtonBuilder: RotateFloatingActionButtonBuilder(
              fabSize: ExpandableFabSize.regular,
              backgroundColor: Colors.green[400],
              child: const Icon(Icons.add)),
          closeButtonBuilder: DefaultFloatingActionButtonBuilder(
            backgroundColor: Colors.green[400],
            child: const Icon(Icons.close),
          ),
          children: const [
            CustomFloatingAction(title: 'Workspace', icon: Icons.book,route: '/createworkspace'),
            CustomFloatingAction(title: 'Board', icon: Icons.book,route: '/createboard'),
            CustomFloatingAction(title: 'Card', icon: Icons.card_membership,route: '/createcard'),
          ]),
    );
  }
}
