import 'package:flutter/material.dart';
class AddPage extends StatelessWidget {
  const AddPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text("Add Page"),
        ),
      ),
    );
  }
}
