import 'package:flutter/material.dart';
import 'package:trello_flutter/utils/color.dart';

class WorkspaceMenus extends StatefulWidget {
  const WorkspaceMenus({super.key});

  @override
  State<WorkspaceMenus> createState() => _WorkspaceMenusState();
}

class _WorkspaceMenusState extends State<WorkspaceMenus> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            size: 30,
          ),
        ),
        title: const Text('Workspace menu'),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {
              // navigate to workspace seetings
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Workspace 1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text.rich(
                    TextSpan(children: [
                      TextSpan(text: '@workspace1'),
                      TextSpan(text: ' (Free) '),
                      WidgetSpan(
                        child: Icon(
                          Icons.lock,
                          color: dangerColor,
                          size: 15,
                        ),
                      ),
                      TextSpan(
                        text: 'Public',
                        style: TextStyle(color: dangerColor),
                      )
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8,
                      bottom: 8,
                    ),
                    child: Text('Description of the workplace'),
                  ),
                ],
              ),
              const Spacer(),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green[400],
                child: const Text(
                  'W',
                  style: TextStyle(color: whiteShade),
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.only(top: 10),
            child: ListTile(
              tileColor: whiteShade,
              title: const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 15),
                child: Text('Members'),
              ),
              leading: const Icon(Icons.person_outline),
              subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundColor: brandCOlor,
                      child: Text('J'),
                    ),
                    SizedBox(
                      height: 37,
                      width: media.width * 0.7,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: brandCOlor),
                          onPressed: () {},
                          child: const Text('Invite')),
                    )
                  ]),
            ),
          )
        ]),
      ),
    );
  }
}
