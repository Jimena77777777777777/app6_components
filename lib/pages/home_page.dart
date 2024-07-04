import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Container(
           

             
              height: 200.0,
              width: 200.0,
              decoration: BoxDecoration(
                   color: Colors.pink,

                 borderRadius: BorderRadius.circular(20.0),

                  image: DecorationImage(
                          fit:BoxFit.cover,
                          image: AssetImage("assets/img/david_chicle")
                          ),

                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.75),
                    offset: Offset(10,10),
                    blurRadius: 20,

                    )
                  ],


                  
              ),


            ),


              SizedBox(
                          height: 10.0,
                        ),
              Text(
                "Flutter components",
                style: GoogleFonts.poppins(
                  fontSize: 23.0,
                  letterSpacing: 1,

                ),
                ),

             
              SizedBox(
              height: 185.0,
              child: Divider(),
            ),


            SizedBox(
              height: 10.0,
            
            ),

            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 12.0,
                vertical: 10.0,
              ),
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(color:Colors.black.withOpacity(0.75),
                blurRadius: 12.0,
                offset: Offset(5, 5)

                
                )
                
                ]


              ),
              child: ListTile(
                leading: Icon(Icons.check_circle_outline, color: Colors.black38,),
                title: Text("Avatar"),
                
                subtitle: Text("Ir a de detalle de avatr", 
                style: GoogleFonts.poppins()),
                trailing: Icon(Icons.chevron_right),
              ),
            )





          ],
        ),
      ),
    );
  }
}