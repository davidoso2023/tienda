import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Color(0xFFB6B6B6),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.local_shipping),
            onPressed: () => null,
          ),
          IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () => null,
          ),
          Container(
            margin: EdgeInsets.only(
                top: 0,
                bottom: 12), // Ajuste de margen para la posición vertical
            height: 80,
            width: 78,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF968179),
                  Color(0xFFCCBCBC),
                  Color(0xFF644434)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: FloatingActionButton(
              onPressed: () => print('Location button pressed'),
              tooltip: 'Location',
              child: Icon(Icons.gps_fixed),
              backgroundColor: Colors.transparent,
              elevation: 20.0,
            ),
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () => null,
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () => null,
          ),
        ],
      ),
    );
  }
}
