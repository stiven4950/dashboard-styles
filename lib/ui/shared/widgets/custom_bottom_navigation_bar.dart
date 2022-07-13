import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int active = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.indigo.shade100,
            Colors.white,
          ],
          stops: const [.3, .9],
        ),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ItemMenuWidget(
            icon: Icons.favorite,
            isActive: active == 0,
            onPressed: () => setState(() => active = 0),
          ),
          ItemMenuWidget(
            icon: Icons.add,
            isActive: active == 1,
            onPressed: () => setState(() => active = 1),
          ),
          ItemMenuWidget(
            icon: Icons.person,
            isActive: active == 2,
            onPressed: () => setState(() => active = 2),
          ),
          ItemMenuWidget(
            icon: Icons.calendar_month,
            isActive: active == 3,
            onPressed: () => setState(() => active = 3),
          ),
          ItemMenuWidget(
            icon: Icons.settings,
            isActive: active == 4,
            onPressed: () => setState(() => active = 4),
          ),
        ],
      ),
    );
  }
}

class ItemMenuWidget extends StatefulWidget {
  final IconData icon;
  final bool isActive;
  final Function onPressed;
  const ItemMenuWidget({
    Key? key,
    required this.icon,
    this.isActive = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  State<ItemMenuWidget> createState() => _ItemMenuWidgetState();
}

class _ItemMenuWidgetState extends State<ItemMenuWidget> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => widget.onPressed(),
        child: Icon(
          widget.icon,
          color: widget.isActive || isHover
              ? const Color(0xff5955B3)
              : const Color.fromARGB(255, 132, 129, 177),
          size: 26,
        ),
      ),
    );
  }
}
