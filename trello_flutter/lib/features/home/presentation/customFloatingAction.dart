import 'package:flutter/material.dart';

class CustomFloatingAction extends StatefulWidget {
  const CustomFloatingAction(
      {super.key,
      required this.title,
      required this.icon,
      required this.route});
  final String title;
  final String route;
  final IconData icon;
  @override
  State<CustomFloatingAction> createState() => _CustomFloatingActionState();
}

class _CustomFloatingActionState extends State<CustomFloatingAction> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, widget.route);
      },
      child: Text.rich(TextSpan(children: [
        WidgetSpan(
          child: SizedBox(
            width: 100,
            height: 30,
            child: Card(
              child: Center(
                child: Text(widget.title),
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
            child: Icon(widget.icon, color: Colors.white, size: 26),
          ),
        )
      ])),
    );
  }
}
