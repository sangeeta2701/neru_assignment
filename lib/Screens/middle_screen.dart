import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neru_assignment/Screens/home_screen.dart';
import 'package:neru_assignment/utils/colors.dart';
import 'package:neru_assignment/widgets/sizedbox.dart';

class MiddleScreen extends StatelessWidget {
  const MiddleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        lightBlue,
        mediumBlue,
        darkBlue,
      ], begin: Alignment.topLeft, end: Alignment.bottomCenter)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/img6.png"),
            ),
            height24,
            Text(
              "Neru Lending!!",
              style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: wColor,
                  decoration: TextDecoration.none),
            ),
            height16,
            Text(
              "We help businesses build their business credit and help with their funding needs with our free app and software",
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: wColor,
                  height: 1.4,
                  decoration: TextDecoration.none),
            ),
            height24,
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: mediumBlue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                },
                child: Center(
                    child: Text(
                  "Join Us",
                  style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: wColor,
                      decoration: TextDecoration.none),
                ))),
          ],
        ),
      ),
    );
  }
}
