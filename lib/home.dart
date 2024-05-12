import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(168, 0, 0, 0),
      appBar: AppBar(
        leading: PopupMenuButton(
          icon: const Icon(
            Icons.menu,
          ),
          itemBuilder: (BuildContext context) => [
            PopupMenuItem(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Project',
                  style: GoogleFonts.workSans(
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
                  style: GoogleFonts.workSans(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
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
          cornerRadius: 30,
        ),
      ),
    );
  }
}
