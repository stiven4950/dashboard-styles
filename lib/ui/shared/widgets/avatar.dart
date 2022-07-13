import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          const Text(
            'Omar Stiven',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(width: 10),
          ClipOval(
            child: Container(
              width: 40.0,
              height: 40.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
