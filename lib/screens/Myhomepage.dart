import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/map_screen.dart';


import '../widgets/CustomBottomNavigationBar.dart';



class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Center(
         child: MapScreen(),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}