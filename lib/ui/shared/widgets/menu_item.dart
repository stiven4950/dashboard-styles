import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMenuItem extends StatelessWidget {
  final String text;
  final Function? onPressed;
  final bool isActive;
  final IconData icon;
  final bool isOpenBar;
  final int order;
  const CustomMenuItem({
    Key? key,
    this.isActive = false,
    required this.text,
    this.onPressed,
    required this.icon,
    required this.isOpenBar,
    required this.order,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final button = Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (onPressed != null) ? () => onPressed!() : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Row(
            children: [
              Container(
                width: 5,
                height: 25,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(3.0),
                    bottomRight: Radius.circular(3.0),
                  ),
                  color: isActive ? Colors.white : Colors.transparent,
                ),
              ),
              const SizedBox(width: 15),
              Icon(icon, color: Colors.white, size: 25),
              if (isOpenBar) ...[
                const SizedBox(width: 20),
                FadeIn(
                  delay: Duration(milliseconds: order * 50),
                  child: Text(
                    text,
                    style: GoogleFonts.roboto(color: Colors.white),
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
    return isOpenBar
        ? button
        : Tooltip(
            message: text,
            child: button,
          );
  }
}
