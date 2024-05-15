import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Shader OverallTextGradiant = const LinearGradient(colors: [
    Color(0xff1f005c),
    Color(0xff5b0060),
    Color(0xff870160),
    Color(0xfff39060),
    Color.fromARGB(255, 255, 89, 0)
  ]).createShader(Rect.fromLTWH(0, 0, 200.0, 70));

  mysSkill(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: GoogleFonts.lato(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(168, 0, 0, 0),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // actions: [
        // Next Version add light dark mode
        // ],
        leading: PopupMenuButton(
          color: Colors.black,
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Project',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            PopupMenuItem(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'About',
                  style: GoogleFonts.lato(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SlidingSheet(
        color: Colors.white,
        elevation: 8,
        cornerRadius: 16,
        snapSpec: const SnapSpec(
          // Enable snapping. This is true by default.
          snap: true,
          // Set custom snapping points.
          snappings: [0.4, 0.7, 1.0],
          // Define to what the snappings relate to. In this case,
          // the total available space that the sheet can expand to.
          positioning: SnapPositioning.relativeToAvailableSpace,
        ),
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 19, 16, 16),
                  Color.fromARGB(255, 0, 0, 0)
                ],
              ),
            ),
          );
        },
        body: Container(
            height: 500,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: const Column(
              children: [
                Row(
                  children: [],
                )
              ],
            )),
      ),
    );
  }
}
