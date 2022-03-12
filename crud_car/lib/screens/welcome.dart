import 'package:crud_car/main.dart';
import 'package:crud_car/screens/screens.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: .2,
                child: Image.asset(
                  'assets/images/welcome_bg_crop.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 110,
              left: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Koleksi profile gadis idolamu di',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Colors.white60,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'FaceGirls',
                    style: TextStyle(
                      color: Colors.pink,
                      fontSize: 50.0,
                      fontFamily: 'poppins',
                    ),
                  ),
                  Text(
                    'Pastikan devicemu terkoneksi internet',
                    style: TextStyle(
                      fontFamily: 'poppins',
                      color: Colors.white60,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(
                      onPressed: () => Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => MasterPage())),
                      child: Text(
                        '>>>',
                        style: TextStyle(fontSize: 25.0, fontFamily: 'poppins'),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
