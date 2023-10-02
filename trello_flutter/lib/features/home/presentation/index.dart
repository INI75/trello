import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:trello_flutter/utils/color.dart';
import 'package:trello_flutter/utils/config.dart';
import 'package:trello_flutter/utils/service.dart';
import 'package:trello_flutter/utils/widgets.dart';

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
          duration: const Duration(seconds: 1),
          children: [
            _floatingActionButton(title: 'Workspace', icon: Icons.book),
            _floatingActionButton(title: 'Board', icon: Icons.book),
            _floatingActionButton(title: 'Card', icon: Icons.card_membership),
          ]),
    );
  }

  Widget _floatingActionButton({
    required String title,
    required IconData icon,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Text.rich(TextSpan(children: [
        WidgetSpan(
          child: SizedBox(
            width: 100,
            height: 30,
            child: Card(
              child: Center(
                child: Text(title),
              ),
            ),
          ),
        ),
        const WidgetSpan(
          child: SizedBox(
            width: 20,
          ),
        ),
        WidgetSpan(
          child: CircleAvatar(
            backgroundColor: Colors.green[400],
            child: Icon(icon, color: Colors.white, size: 26),
          ),
        )
      ])),
    );
  }
}
