
import 'package:flutter/material.dart';
import 'package:muhendislik_tasarimi/auth.dart';
import 'package:muhendislik_tasarimi/loginpage.dart';
import 'package:rive/rive.dart';

class registerpage extends StatefulWidget {
  const registerpage({super.key});

  @override
  State<registerpage> createState() => _registerpageState();
}

class _registerpageState extends State<registerpage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordAgainController =
      TextEditingController();

  final Auth _authService = Auth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Material(
          borderRadius: BorderRadius.circular(25),
          color: const Color.fromARGB(255, 210, 204, 204),
          child: Container(
            padding: const EdgeInsets.all(10.0),
            width: 300,
            height: 415,
            child: Column(children: [
              const SizedBox(
                height: 100,
                width: 100,
                child: RiveAnimation.asset(
                  "animation/animation.riv",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Movie Recorder",
                  style: TextStyle(
                      fontSize: 19,
                      fontFamily: "RobotoSlab",
                      fontWeight: FontWeight.normal)),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                endIndent: 12,
                indent: 14,
                thickness: 1,
                color: Color.fromARGB(255, 18, 11, 11),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 2),
                child: Container(
                    decoration: const BoxDecoration(),
                    width: 250,
                    height: 15,
                    child: TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "İsim",
                          hintStyle: TextStyle(
                            fontSize: 12,
                          )),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: Container(
                    decoration: const BoxDecoration(),
                    width: 250,
                    height: 15,
                    child: TextField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email",
                          hintStyle: TextStyle(
                            fontSize: 12,
                          )),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                    decoration: const BoxDecoration(),
                    width: 250,
                    height: 15,
                    child: TextField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Şifre",
                          hintStyle: TextStyle(
                            fontSize: 12,
                          )),
                    )),
              ),
              Container(
                  decoration: const BoxDecoration(),
                  width: 250,
                  height: 15,
                  child: TextField(
                    controller: _passwordAgainController,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Şifre tekrar",
                        hintStyle: TextStyle(
                          fontSize: 12,
                        )),
                  )),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 90,
                  ),
                  SizedBox(
                    width: 85,
                    height: 30,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          _authService
                              .createAccount(
                            _nameController.text,
                            _emailController.text,
                            _passwordController.text,
                          )
                              .then((value) {
                            return Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const loginPage()));
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white, backgroundColor: Colors.black),
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text("Kayıt ol",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 30,
                    height: 35,
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset("images/google.png"),
                    ),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    )));
  }
}
