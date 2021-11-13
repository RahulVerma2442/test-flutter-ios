import 'package:flutter/material.dart';
import 'login_signup.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff4e4),
      body: SafeArea(
        minimum: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              child:  const  Align(
                alignment: Alignment.centerLeft,
                child:  Text(
                  "WeLivdIt",
                  style: TextStyle(
                    fontSize: 29,
                    color: Color(0xffe16259),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ),
            Expanded(
              child: Container(
                width: double.infinity,
                child: Center(
                  
                  child: ButtonTheme(
                    height: 100,
                    minWidth: 100,
                    child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color(0xffe16259),
                              textStyle: const TextStyle(
                                  fontSize: 29, fontWeight: FontWeight.w500)),
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (_) {
                              return const LoginSignup();
                            }));
                          },
                          child: const Text("Mentors"),
                        ),
                  ),
                ),

            
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}



