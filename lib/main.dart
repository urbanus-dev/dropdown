import 'package:dropdown_menu/dropdownmenu.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
  home: dropdown(),
  ));
}
class dropdown extends StatefulWidget {
  const dropdown({Key? key}) : super(key: key);

  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  double _opacity = 0.0;
  double _fontSize = 20.0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2), (){
     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MyForm()));
     setState(() {
       _opacity = 1.0;
       _fontSize = 30.0;
     });
    }
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Dropdown'),
      ) ,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: AnimatedContainer(
                  duration: const Duration(seconds: 60),
                  child: Center(
                    child: Text(
                      'Welcome',
                      style: TextStyle(fontSize: _fontSize),
                    ),
                  ),
                ),
              ),
            ],
      ),
    );

  }
}
