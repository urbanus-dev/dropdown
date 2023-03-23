import 'package:flutter/material.dart';
class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("dropdown"),
        actions: [
          DropdownButton(
              items: const [

                DropdownMenuItem(
                    child: Text("bbit"),
                    value:"cs"
                ),
                DropdownMenuItem(
                    child: Text("cs"),
                    value:"cs"
                ),
                DropdownMenuItem(
                    child: Text("cs"),
                    value:"cs"
                ),
                DropdownMenuItem(
                    child: Text("cs"),
                    value:"cs"
                ),
              ],
              onChanged:(value){
                setState(() {
                });
              }
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          DropdownButtonFormField(
            decoration:const InputDecoration(
              labelText: "select your course",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.cyan),
              ),
            ),
              items: const [
                DropdownMenuItem(
                    child: const Text("cs"),
                        value: "cs",
                ),
                DropdownMenuItem(
                  child: const Text("BBA"),
                  value: "BBA",
                ),
                DropdownMenuItem(
                  child: const Text("BBIT"),
                  value: "BBIT",
                ),
                DropdownMenuItem(
                  child: const Text("IT"),
                  value: "IT",
                ),
              ],
              onChanged:(value){
                setState(() {
                });
              }
          ),
        ],
      ),
    );
  }
}
