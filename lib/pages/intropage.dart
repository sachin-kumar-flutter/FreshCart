import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery/pages/homepage.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(80,80,80,50),
            child: Image.asset("assets/avacadoicon.webp"),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "We deliver groceries at your doorstep",
              textAlign: TextAlign.center,
              style: GoogleFonts.notoSerif(
                fontSize: 40,
                fontWeight: FontWeight.bold
              )
            ),
          ),

          Text("Fresh items everyday"),

          const Spacer(),

          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> const HomePage())),
            child: Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
            
              ),
            ),
          ),


          const Spacer(),
        ],
      )
    );
  }
}