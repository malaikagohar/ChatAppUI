import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: Image.asset(
                    "assets/register3.png",
                    alignment: Alignment.center,
                    height: 220,
                  )
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 10),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide.none,
                      ),
                      hintText: "Username",
                      labelText: "Enter Username",
                      filled: true
                    )
                  ),
                ),
                
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: true,          
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(7)
                      ),
                      hintText: "Password",
                      labelText: "Enter Password",
                      filled: true
                    ),
                  ),
                ),
                const SizedBox(height: 25,),
                Center(
                  child: ElevatedButton(
                    onPressed: (){}, 
                    child: const Text(
                      "Register",
                      style: TextStyle(fontSize: 15),
                    ),
                  style: TextButton.styleFrom(
                    minimumSize: const Size(75,35),
                    backgroundColor: Colors.purple[600]
                  ),
                  ),
                ),
                const Divider(
                  height: 40,
                  color: Color.fromARGB(75, 158, 158, 158)
                ),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: (){}, 
                    icon: const Icon(Icons.facebook), 
                    label: const Text("Sign up With Facebook"),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue[900],
                      fixedSize: const Size(500,50)
                    ),
                  )
                ),
                const SizedBox(height:20),
                Center(
                  child: ElevatedButton(
                    onPressed: (){}, 
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/googleplus4.png",
                          height: 35,
                        ),
                        const Text(
                          "   Sign up With Google",
                          style: TextStyle(color: Colors.white)
                        )
                      ],
                    ),
                    style: TextButton.styleFrom(
                      minimumSize: const Size(500,50),
                      backgroundColor: Colors.red[900]
                    )
                  )
                )
               ],
            ),
          ),   
        )   
      ),
    );
  }
}