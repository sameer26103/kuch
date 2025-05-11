import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Screen1 extends StatefulWidget {
  final VoidCallback func;
  final bool is_dark;
  const Screen1({super.key,required this.func,required this.is_dark});

  @override
  State<Screen1> createState() => _themeState();
}

class _themeState extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            shadowColor: Colors.red,
            elevation: 20,
            iconTheme: IconThemeData(color: Colors.white),
            backgroundColor: Colors.pink,
            title: Text(
              "Practice",
              style:GoogleFonts.pacifico(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3,
                  fontSize: 30),
            ),
            centerTitle: true,
            actions: [
              IconButton(onPressed: widget.func, icon:widget.is_dark==true? Icon(Icons.dark_mode): Icon(Icons.light_mode))
            ]
          ),
          body: Center(
            child: Column(
              children: [
                  SizedBox(height: 20,),
                Text(
                  "M.Sameer",
                  style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                  SizedBox(height: 20,),
                Text(
                  "Wasib Don",
                  style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20,),
                Text(
                  "Sami Khusri",
                  style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
  }
}