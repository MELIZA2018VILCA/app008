import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({super.key});
  showMyAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("AlertDialog example!!!"),
          backgroundColor: Colors.white,
          content: Text(
              "Este es un ejemplo del AlertDialog. esto es un texto de prueba"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }
  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          
          title: Text("Blog post published"),
          backgroundColor: Colors.white,
          content: Text(
              "this blog post has been published. team members will be able to edit this post and republish changes"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Aceptar"),
            ),
          ],
        );
      },
    );
  }
  showAlerta(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("your videos has been uploaded"),
          backgroundColor: Colors.white,
          content: Text(
              "you`re video has finished uploading and is live"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Aceptar"),
            ),
          ],
          
        );
      },
    );
  }
showwAlerta(BuildContext context) {
    showDialog(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: null,
                                content: Container(
                                  height: 10.0,
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 10.0,
                                        child: Image(image: AssetImage("assets/images/aler2.png"),)
                                      ),
                                      Container(
                                        width:  1,
                                        child: Text(
                                          "Success",
                                          style: TextStyle(
                                              fontFamily: 'HelveticaNueue',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                              height: 1.5),
                                          textAlign: TextAlign.center,
                                        )),
                                    ],
                                  ),
                                )

                              ));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showMyAlert(context);
              },
              child: Text("Alert"),
            ),
            SizedBox(
              height: 15.0,
            ),
            
            ElevatedButton(
              onPressed: () {
                showAlert(context);
              },
              child: Text("Alert2"),
            ),
             SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: () {
                showAlerta(context);
              },
              child: Text("Alert3"),
            ),
            ElevatedButton(
              onPressed: () {
                showwAlerta(context);
              },
              child: Text("prueba"),
            )
          ],
        ),
      ),
    );
  }
}