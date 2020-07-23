import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Housing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:Text('Home Insurance',
        style: GoogleFonts.montserrat(
          color:Colors.greenAccent
        ),
        ),
         centerTitle: true,
        elevation:0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:30.0),
        child: Column(
          children:<Widget>[
            SizedBox(height: 20.0,),
            ExpansionTile(
              title: Text(
                'Company A',
                style:GoogleFonts.montserrat(
                  color:Colors.greenAccent
                ),
              ),

                children:<Widget>[
                  ListTile(
                    title:Text('Price',
                    style:GoogleFonts.montserrat(
                      color: Colors.greenAccent
                    )
                    )
                  ),
                  ListTile(
                    title:Text('1000/month Ksh',
                    style:GoogleFonts.montserrat(
                      color: Colors.greenAccent
                    )
                    )
                  )
                ]
            )
          ]
        ),
        ),
    );
  }
}