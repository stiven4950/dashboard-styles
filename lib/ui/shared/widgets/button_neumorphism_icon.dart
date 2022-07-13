import 'package:flutter/material.dart';

class NeumorphismIconButton extends StatefulWidget {
  final IconData icon;
  final Color color;
  final Color color1Gradient;
  final Color color2Gradient;
  final double radius;
  final double dimension;

  const NeumorphismIconButton({
    Key? key,
    required this.icon,
    required this.color1Gradient,
    required this.color2Gradient,
    required this.color,
    required this.radius,
    required this.dimension,
  }) : super(key: key);

  @override
  State<NeumorphismIconButton> createState() => _NeumorphismIconButtonState();
}

class _NeumorphismIconButtonState extends State<NeumorphismIconButton> {
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
            width: widget.dimension,
            height: widget.dimension,
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
              borderRadius: BorderRadius.circular(widget.radius),
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
            child: Icon(
              widget.icon,
              color: widget.color,
            ),
          ),
        ),
      ),
    );
  }
}
