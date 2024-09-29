import 'package:flutter/material.dart';
import 'package:hackyeah1/UIinfo.dart';
import 'package:hackyeah1/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width - 80,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.add_reaction_rounded),
                    hintText: 'What is your name?',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.lightBlue, width: 3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintStyle: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              FloatingActionButton(
                backgroundColor: Colors.lightBlue,
                onPressed: () {
                  name = nameController.text;

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyHomePage(
                              title: '',
                            )),
                  );
                },
                child: Icon(Icons.login, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

UIinfo currentUIinfo =
    new UIinfo(1440, name); //to be used - object to simplify updating UI

//Real login mechanics besides giving name - TBA