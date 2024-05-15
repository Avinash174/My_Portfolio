import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:remix_flutter/remix_flutter.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(168, 0, 0, 0),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(40),
              child: ShaderMask(
                shaderCallback: ((bounds) {
                  return const LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black,
                        Colors.transparent,
                      ]).createShader(
                    Rect.fromLTRB(
                      0,
                      0,
                      bounds.width,
                      bounds.height,
                    ),
                  );
                }),
                blendMode: BlendMode.dst,
                child: Image.asset(
                  'assets/images/img.jpg',
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.49,
              ),
              child: Column(
                children: [
                  Text(
                    'Hello I Am ',
                    style: GoogleFonts.lato(
                      letterSpacing: 2,
                      color: Colors.white,
                      // foreground: Paint()..shader = headerGradient,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Avinash Magar',
                    style: GoogleFonts.lato(
                      letterSpacing: 2,
                      foreground: Paint()..shader = headerGradient,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'Mobile App Developer',
                    style: GoogleFonts.lato(
                      // wordSpacing: 10,
                      letterSpacing: 5,
                      foreground: Paint()..shader = hightlightGradient,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    width: 120,
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                      child: Text(
                        'Hire Me',
                        style: GoogleFonts.lato(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          RemixIcon.instagram_fill,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.blue,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          RemixIcon.linkedin_box_fill,
                          color: Colors.blue,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          RemixIcon.github_fill,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          RemixIcon.twitter_x_fill,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          RemixIcon.youtube_fill,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
