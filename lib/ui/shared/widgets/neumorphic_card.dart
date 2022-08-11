import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NeumorphicCard extends StatelessWidget {
  const NeumorphicCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: _boxDecorationCard(),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Text(
                      'Ipsum Dolor',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text('Dolor sit amet lorem'),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
                child: VerticalDivider(),
              ),
              Expanded(
                child: Column(
                  children: [
                    const Text('Lorem'),
                    const SizedBox(height: 5),
                    Text(
                      '11',
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipOval(
                child: Container(
                  height: 20,
                  width: 20,
                  color: Colors.indigo,
                ),
              ),
              const Text('Dolor'),
              ClipOval(
                child: Container(
                  height: 20,
                  width: 20,
                  color: Colors.indigo.shade300,
                ),
              ),
              const Text('Lorem'),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            width: size.width,
            height: 10,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.indigo.shade200,
                  Colors.white,
                ],
              ),
              border: Border.all(color: Colors.indigo),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(),
          ),
        ],
      ),
    );
  }

  BoxDecoration _boxDecorationCard() {
    return BoxDecoration(
      color: Colors.white,
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.indigo.shade100,
          Colors.white,
        ],
      ),
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
      borderRadius: BorderRadius.circular(7),
    );
  }
}
