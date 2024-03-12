import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  final _firstnamecontroller = TextEditingController();
  final _lastnamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 60,
                width: 330,
                child: TextField(
                  controller: _firstnamecontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      labelText: "Username",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.black)),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SizedBox(
                height: 60,
                width: 330,
                child: TextField(
                  obscureText: true,
                  controller: _lastnamecontroller,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      labelText: "Password",
                      labelStyle: GoogleFonts.aBeeZee(color: Colors.black)),
                ),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {
                  logincheck();
                },
                icon: Icon(Icons.check),
                label: Text("Login"))
          ],
        ),
      ),
    );
  }

  void logincheck() {
    final _first = _firstnamecontroller;
    final _last = _lastnamecontroller;

    if (_first == _last) {
      
    } else {
      final _errormessage = 'username password does not match';
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Error"),
              content: Text(_errormessage),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Close"))
              ],
            );
          });
    }
  }
}
