import 'package:dashboard_custom_styles/ui/shared/widgets/button_neumorphism_icon.dart';
import 'package:dashboard_custom_styles/ui/shared/widgets/button_rounded.dart';
import 'package:dashboard_custom_styles/ui/shared/widgets/custom_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
      color: Colors.indigo.withOpacity(.2),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Estilo Neumorphism',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                fontSize: 22,
                fontWeight: FontWeight.w300,
              ),
            ),
            const SizedBox(height: 50),
            Wrap(
              alignment: WrapAlignment.start,
              children: [
                SizedBox(
                  width: size.width * .20,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ButtonRounded(
                            text: 'Making',
                            icon: Icons.arrow_downward_rounded,
                            colorText: Colors.indigo,
                            color1Gradient: Colors.indigo.shade100,
                            color2Gradient: Colors.white,
                          ),
                          const ButtonRounded(
                            text: 'Done!',
                            icon: Icons.arrow_upward_rounded,
                            colorText: Colors.white,
                            color1Gradient: Color(0xff5955B3),
                            color2Gradient: Color.fromARGB(255, 130, 126, 206),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          NeumorphismIconButton(
                            icon: Icons.ac_unit_rounded,
                            color: Colors.indigo,
                            color1Gradient: Colors.indigo.shade100,
                            color2Gradient: Colors.white,
                            dimension: 45.0,
                            radius: 10,
                          ),
                          const NeumorphismIconButton(
                            icon: Icons.add_link_rounded,
                            color: Colors.white,
                            color1Gradient: Color(0xff5955B3),
                            color2Gradient: Color.fromARGB(255, 130, 126, 206),
                            dimension: 45.0,
                            radius: 10,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const CustomBottomNavigationBar(),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          NeumorphismIconButton(
                            icon: Icons.home_repair_service,
                            color: Colors.indigo,
                            color1Gradient: Colors.indigo.shade100,
                            color2Gradient: Colors.white,
                            dimension: 60,
                            radius: 60,
                          ),
                          NeumorphismIconButton(
                            icon: Icons.car_repair,
                            color: Colors.indigo,
                            color1Gradient: Colors.indigo.shade100,
                            color2Gradient: Colors.white,
                            dimension: 60,
                            radius: 60,
                          ),
                          NeumorphismIconButton(
                            icon: Icons.home_work_outlined,
                            color: Colors.indigo,
                            color1Gradient: Colors.indigo.shade100,
                            color2Gradient: Colors.white,
                            dimension: 60,
                            radius: 60,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
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
                        ),
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
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * .20,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          NeumorphismIconButton(
                            icon: Icons.calendar_month_rounded,
                            color: Colors.indigo,
                            color1Gradient: Colors.indigo.shade100,
                            color2Gradient: Colors.white,
                            dimension: 60,
                            radius: 60,
                          ),
                          NeumorphismIconButton(
                            icon: Icons.temple_hindu,
                            color: Colors.indigo,
                            color1Gradient: Colors.indigo.shade100,
                            color2Gradient: Colors.white,
                            dimension: 60,
                            radius: 60,
                          ),
                          NeumorphismIconButton(
                            icon: Icons.medication_liquid,
                            color: Colors.indigo,
                            color1Gradient: Colors.indigo.shade100,
                            color2Gradient: Colors.white,
                            dimension: 60,
                            radius: 60,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          NeumorphismIconButton(
                            icon: Icons.location_on,
                            color: Colors.indigo,
                            color1Gradient: Colors.indigo.shade100,
                            color2Gradient: Colors.white,
                            dimension: 60,
                            radius: 60,
                          ),
                          NeumorphismIconButton(
                            icon: Icons.favorite,
                            color: Colors.indigo,
                            color1Gradient: Colors.indigo.shade100,
                            color2Gradient: Colors.white,
                            dimension: 60,
                            radius: 60,
                          ),
                          NeumorphismIconButton(
                            icon: Icons.route_rounded,
                            color: Colors.indigo,
                            color1Gradient: Colors.indigo.shade100,
                            color2Gradient: Colors.white,
                            dimension: 60,
                            radius: 60,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: size.width * .20,
                  child: Column(
                    children: [],
                  ),
                ),
                SizedBox(
                  width: size.width * .20,
                  child: Column(
                    children: [],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
