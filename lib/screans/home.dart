import 'package:app/models/my_habbits.dart';
import 'package:app/screans/item_row.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Text("My Daily Happiness") ,
          centerTitle: true,
          backgroundColor:const Color.fromARGB(255, 243, 208, 102),
        ),
        body: ListView.separated(
           
           itemCount:Habbits.length ,
           separatorBuilder: (context, index) => Container(height: 10,),
           itemBuilder: (context, index) => CustomeRow(habbit: Habbits[index]) ,
        )
    );
  }
}
