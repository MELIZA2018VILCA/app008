import 'package:flutter/material.dart';

class SelectionPage extends StatefulWidget {

  const SelectionPage({super.key});

  @override
  State<SelectionPage> createState() => _SelectionPageState();
}

class _SelectionPageState extends State<SelectionPage> {
  
   selectdDate(){
    showDatePicker(
    context: context,
    initialDate: date,
    firstDate: DateTime(1950),
    lastDate: DateTime(2030),
    );
  }
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 112, 219, 90),
        title: Text("Data Picker"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: '${date.day}/${date.month}/${date.year}',
              ),
              
              onTap : ( ) async {
                DateTime? newDate = await showDatePicker (
                  context: context,
                  initialDate: date,
                  firstDate: DateTime(1900) ,
                  lastDate: DateTime(2100) ,
                ); 
                if (newDate == null) return; 
                setState(() => date = newDate);
              },
            ),
            
          ],
        ),
      ),
    );
  }
}