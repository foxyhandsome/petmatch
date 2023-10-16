import 'package:flutter/material.dart';
import 'package:petmatch/JIB_USER/editprofileuser.dart';
import 'package:petmatch/JIB_USER/loginjib.dart';
import 'package:petmatch/JIB_USER/profileuser.dart';
import 'package:petmatch/JIB_USER/pecert.dart';
import 'package:petmatch/JIB_USER/profileuser.dart';
import 'package:petmatch/authenticationsScreen/edituser.dart';
import 'package:petmatch/authenticationsScreen/navigationbar/navigationbar.dart';

class pedcert extends StatefulWidget {
  @override
  _pedcertState createState() => _pedcertState();
}

class _pedcertState extends State<pedcert> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 239, 83, 80),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "ใบพันธุ์ประวัติสุนัข",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color:
              Color.fromARGB(255, 255, 255, 255), // Set your desired color here
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 15.0),
              Text(
                "",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 500.0, // กำหนดความสูงของ Container
                child: ClipRRect(
                  child: Container(
                    width: double.infinity, // กำหนดความกว้างให้เต็มรูปแบบ
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 239, 83, 80),
                        width: 5.0,
                      ),
                    ),
                    child: Image.network(
                      'https://f.ptcdn.info/597/021/000/1406209439-1006201264-o.jpg',
                      fit: BoxFit.fill, // ให้รูปภาพปรับขนาดให้พอดีกับ Container
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
