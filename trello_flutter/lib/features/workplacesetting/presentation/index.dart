import 'package:flutter/material.dart';
import 'package:trello_flutter/features/visibility/presentation/index.dart';
import 'package:trello_flutter/utils/color.dart';

class WorkspaceSettings extends StatefulWidget {
  const WorkspaceSettings({super.key});

  @override
  State<WorkspaceSettings> createState() => _WorkspaceSettingsState();
}

class _WorkspaceSettingsState extends State<WorkspaceSettings> {
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context).size;
    nameController.text = 'Workspace 1';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Workspace settings'),
        centerTitle: false,
      ),
      body: Column(children: [
        ListTile(
          leading: const Text('Name'),
          trailing: SizedBox(
            width: media.width * .4,
            child: EditableText(
              controller: nameController,
              focusNode: FocusNode(),
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: brandCOlor),
              cursorColor: brandCOlor,
              backgroundCursorColor: brandCOlor,
              textAlign: TextAlign.end,
              onSubmitted: (value) {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ),
        ),
        ListTile(
          leading: const Text('Visibility'),
          trailing: GestureDetector(
            child: const Text('Public'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return const BoardVisibility();
                },
              );
            },
          ),
        ),
        const Align(
          alignment: Alignment.center,
          child: Text('Not all settings are editable on mobile'),
        )
      ]),
    );
  }
}
