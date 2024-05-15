import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remix_flutter/remix_flutter.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Shader headerGradient = const LinearGradient(colors: <Color>[
    Color.fromARGB(255, 0, 242, 255),
    Color.fromARGB(255, 255, 255, 0)
  ]).createShader(const Rect.fromLTWH(0, 0, 200.0, 70.0));

  final Shader hightlightGradient = const LinearGradient(colors: <Color>[
    Color.fromARGB(255, 43, 255, 1),
    Color.fromARGB(255, 255, 255, 0),
  ]).createShader(const Rect.fromLTWH(0, 0, 200.0, 70.0));

  final Shader OverallTextGradiant = const LinearGradient(colors: [
    Color(0xff1f005c),
    Color(0xff5b0060),
    Color(0xff870160),
    Color(0xfff39060),
    Color.fromARGB(255, 255, 89, 0)
  ]).createShader(const Rect.fromLTWH(0, 0, 200.0, 70));

  mySkill(num, type) {
    return Row(
      children: [
        Text(
          num,
          style: GoogleFonts.lato(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            foreground: Paint()..shader = OverallTextGradiant,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 10),
          child: Text(type),
        ),
      ],
    );
  }

  mySpectialization(icon, text) {
    return Container(
      width: 105,
      height: 115,
      child: Card(
        margin: EdgeInsets.all(0),
        color: Color.fromARGB(255, 30, 31, 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                text,
                style: GoogleFonts.lato(
                  foreground: Paint()..shader = hightlightGradient,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
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
      body: Container(
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
        child: SlidingSheet(
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
            body: Center(
              child: Text(
                'data',
                style: GoogleFonts.lato(
                  fontSize: 30,
                  color: Colors.blue,
                ),
              ),
            ),
            builder: (context, state) {
              return Container(
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 30,
                ),
                height: 500,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mySkill("50+", "Projets"),
                        mySkill("20+", "Certification"),
                        mySkill("10M", "Subscriber"),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Specialized In',
                      style: GoogleFonts.lato(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySpectialization(
                              FontAwesomeIcons.android,
                              "Android",
                            ),
                            mySpectialization(
                              RemixIcon.java_fill,
                              "Java",
                            ),
                            mySpectialization(
                              RemixIcon.firebase_fill,
                              "Firebase",
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySpectialization(
                              FontAwesomeIcons.swift,
                              "Swift",
                            ),
                            mySpectialization(
                              FontAwesomeIcons.html5,
                              "HTML",
                            ),
                            mySpectialization(
                              RemixIcon.css3_fill,
                              "CSS",
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mySpectialization(
                              RemixIcon.flutter_fill,
                              "Flutter",
                            ),
                            mySpectialization(
                              FontAwesomeIcons.php,
                              "PHP",
                            ),
                            mySpectialization(
                              FontAwesomeIcons.database,
                              "MYSQL",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
