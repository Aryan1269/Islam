import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CommonAppBar extends StatefulWidget {
  CommonAppBar({Key? key}) : super(key: key);

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        elevation: 1, 
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: Image.asset(
          'assets/Logo.png',
          scale: 1,
        ),
      
        // actions:Icondata.map((I)=>IconButton(onPressed: (){}, icon: Icon(I))).toList(),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
        ],
      ),
    );
  }
}