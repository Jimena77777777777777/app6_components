import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {
  showMyAlert(BuildContext context){
    showDialog(
      context: context, 
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Titulito"),
          backgroundColor: Colors.pink,
          content: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." ),

            actions: [
              OutlinedButton(
                onPressed: (){
                  Navigator.pop(context);
                }, 
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)

                  ),
                  backgroundColor: Colors.white60
                ),
                child: Text("Cancelar")
             
                
                ),

                OutlinedButton(onPressed: (){}, child: Text("Aceptar")
                ),
            ],

        );
      }
      );
  }

  
  showMySecondAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Segundo Titulito"),
          backgroundColor: Colors.blue,
          content: Text(
            "Esta es la segunda alerta. Contenido diferente o similar según lo que necesites."
          ),
          actions: [
            OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Colors.white60,
              ),
              child: Text("Cancelar"),
            ),
            OutlinedButton(onPressed: () {}, child: Text("Aceptar")),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        centerTitle: true,
        backgroundColor: Colors.pink,
        elevation: 2.0,

       
      ),

    
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          ElevatedButton(onPressed: (){
            showMyAlert(context); /// nombre del nuevo
          }, 
          child: Text("Alert 1")
          ),  
         ElevatedButton(
            onPressed: () {
              showMySecondAlert(context);
            },
            child: Text("Alert 2"),
          ),
        ],
      ),
    );
  }
}