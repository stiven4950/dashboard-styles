import 'package:flutter/material.dart';

class ButtonRounded extends StatefulWidget {
  final String text;
  final IconData icon;
  final Color colorText;
  final Color color1Gradient;
  final Color color2Gradient;

  const ButtonRounded(
      {Key? key,
      required this.text,
      required this.icon,
      required this.colorText,
      required this.color1Gradient,
      required this.color2Gradient})
      : super(key: key);

  @override
  State<ButtonRounded> createState() => _ButtonRoundedState();
}

class _ButtonRoundedState extends State<ButtonRounded> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (_) => setState(() => isHover = true),
        onExit: (_) => setState(() => isHover = false),
        child: GestureDetector(
          onTap: () {},
          child: AnimatedContainer(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            duration: const Duration(
              milliseconds: 100,
            ),
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  widget.color1Gradient,
                  widget.color2Gradient,
                ],
              ),
              borderRadius: BorderRadius.circular(50),
              boxShadow: isHover
                  ? null
                  : [
                      BoxShadow(
                        color: Colors.indigo.withOpacity(0.4),
                        offset: const Offset(4, 4),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                      const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4, -4),
                        blurRadius: 15,
                        spreadRadius: 1,
                      ),
                    ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: widget.colorText,
                  ),
                ),
                Icon(
                  widget.icon,
                  color: widget.colorText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
