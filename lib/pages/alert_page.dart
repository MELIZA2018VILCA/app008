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

  showMyAlert2(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/aler2.png',
                    width: 70,
                    height: 70,
                  ),
                ],
              ),
              Text("blog  post published "),
            ],
          ),
          backgroundColor: Colors.white,
          content: Text("you`re video has finished uploading and is live"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "              Cancelar                 ",
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
              ),
              style: OutlinedButton.styleFrom(
                primary: Color.fromARGB(255, 255, 255, 255),
                side: BorderSide(color: Color.fromARGB(255, 15, 12, 15)),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "              Confirm               ",
                style: TextStyle(
                    color: Color.fromARGB(255, 241, 239, 239), fontSize: 15),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 152, 54, 244)),
              ),
            ),
          ],
        );
      },
    );
  }

  showMyAlert3(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: ClipRRect(
                      borderRadius:  BorderRadius.circular(50),
                      child: Image.asset(
                        "assets/images/smile.jpg",
                        width: 350,
                        height: 200,
                      ),
                    ),
                  ),
                ],
              ),
              Text("blog  post published "),
            ],
          ),
          backgroundColor: Colors.white,
          content: Text(
              "this blog post has been published. team members will be able to edit this post and republish changes"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cannncelar"),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Aceptar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cannncelar"),
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
                showMyAlert2(context);
              },
              child: Text("Alert2"),
            ),
            SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: () {
                showMyAlert3(context);
              },
              child: Text("Alert3"),
            ),
          ],
        ),
      ),
    );
  }
}
