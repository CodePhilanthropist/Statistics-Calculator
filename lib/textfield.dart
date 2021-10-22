import 'package:flutter/material.dart';

class TextFieldCustom extends StatefulWidget {
  var _controller = TextEditingController();
  TextField({controller}) {
    this._controller = controller;
  }

  @override
  _TextFieldCustomState createState() => _TextFieldCustomState();
}

class _TextFieldCustomState extends State<TextFieldCustom> {
  @override
  Widget build(BuildContext context) {
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
