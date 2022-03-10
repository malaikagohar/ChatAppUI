import 'package:chatapp/screens/main_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _myFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Form(
            key: _myFormKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child: Image.asset("assets/amigos1.png",
                      
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(7),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Username",
                          labelText: "Username",
                          filled: true),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value != "Malaika Gohar") {
                          if (value != 'Malaika Gohar' &&
                              value != null &&
                              value.isNotEmpty) {
                            return 'Incorrect Username';
                          } else {
                            return 'Please provide username';
                          }
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      obscureText: true,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.circular(7)
                          ),
                          hintText: "Password",
                          labelText: "Password",
                          filled: true
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length < 6 ||
                            value != 'malaika2003') {
                          if (value != 'malaika2003' &&
                              value != null &&
                              value.isNotEmpty) {
                            return 'Incorrect Password';
                          } else {
                            return 'Password must contain atleast 6 characters';
                          }
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_myFormKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MainPage()
                              )
                          );
                        }
                      },
                      child: const Text(
                        "Log in",
                        style: TextStyle(fontSize: 15),
                      ),
                      style: TextButton.styleFrom(
                          minimumSize: const Size(75, 35),
                          backgroundColor: Colors.purple[600]),
                    ),
                  ),
                  const Divider(
                      height: 40, color: Color.fromARGB(75, 158, 158, 158)
                  ),
                  Center(
                    child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook),
                    label: const Text("Log In With Facebook"),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blue[900],
                        fixedSize: const Size(500, 50)
                    ),
                    )
                  ),
                  const SizedBox(height: 20),
                  Center(
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/googleplus4.png",
                                height: 35,
                              ),
                              const Text("   Log In With Google",
                                  style: TextStyle(color: Colors.white)
                              )
                            ],
                          ),
                          style: TextButton.styleFrom(
                              minimumSize: const Size(500, 50),
                              backgroundColor: Colors.red[900]
                          )
                        )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
