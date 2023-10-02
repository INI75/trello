import 'package:flutter/widgets.dart';

class ColorSquare extends StatefulWidget {
  const ColorSquare({super.key, required this.bckgrd});

  final String bckgrd;

  @override
  State<ColorSquare> createState() => _ColorSquareState();
}

class _ColorSquareState extends State<ColorSquare> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color: Color(
              int.parse(widget.bckgrd.substring(1, 7), radix: 16) + 0xFF000000),
          borderRadius: const BorderRadius.all(Radius.circular(5.0))),
    );
  }
}
