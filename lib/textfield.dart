import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  var controller = TextEditingController();
  var theCounter = 0;
  TextField({controller, counter}) {
    this.controller = controller;
    this.theCounter = counter;
  }

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
    TextFieldCustom controls = TextFieldCustom();
    var _controller = controls.controller;
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextField(
        controller: _controller,
        onChanged: (text) {
          setState(() {});
        },
        decoration: InputDecoration(
          hintText: "Enter data",
          labelText: "Number ${_counter + 1}",
          labelStyle: TextStyle(fontSize: 24),
          border: OutlineInputBorder(),
          suffixIcon: _controller.text.length > 0
              ? IconButton(
                  onPressed: () {
                    _controller.clear();
                    setState(() {});
                  },
                  icon: Icon(Icons.cancel, color: Colors.grey))
              : null,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}
