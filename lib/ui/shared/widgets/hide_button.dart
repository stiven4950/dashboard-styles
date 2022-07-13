import 'package:flutter/material.dart';

class HideButton extends StatelessWidget {
  final bool isActive;
  final Function onTap;
  const HideButton({Key? key, required this.isActive, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: isActive ? .2 : 1,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () => onTap(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            width: 20,
            height: 54,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5.0),
                bottomLeft: Radius.circular(5.0),
              ),
            ),
            child: Icon(
              isActive ? Icons.arrow_forward_ios : Icons.arrow_back_ios,
              color: const Color(0xff5955B3),
            ),
          ),
        ),
      ),
    );
  }
}
