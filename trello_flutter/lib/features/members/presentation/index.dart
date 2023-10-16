import 'package:flutter/material.dart';
import 'package:trello_flutter/utils/color.dart';

class Members extends StatefulWidget {
  const Members({super.key});

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Members'),
        centerTitle: false,
        actions: [
          TextButton(
            onPressed: () {
              // navigate to invite memeber screen
            },
            child: const Text(
              'INVITE',
              style: TextStyle(color: whiteShade),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Members (1)'),
              ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: brandCOlor,
                      child: Text('J'),
                    ),
                    title: const Text(
                      'Jane Doe',
                    ),
                    subtitle: const Text('@janedoe'),
                    trailing: const Text(
                      'Admin',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      showBottomSheet(
                        context: context,
                        builder: (context) {
                          return SizedBox(
                            height: media.height * .3,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ListTile(
                                    leading: CircleAvatar(backgroundColor: brandCOlor),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
