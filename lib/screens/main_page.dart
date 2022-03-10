import 'package:chatapp/screens/chatscreen.dart';
import 'package:chatapp/screens/contacts.dart';
import 'package:chatapp/screens/profile.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  void onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List pages = [const ChatScreen(), const Contacts(), const Profile()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: Container(
          padding: const EdgeInsets.fromLTRB(0, 0.2, 0, 0),
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.black,
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(blurRadius: 2, spreadRadius: 0.5, color: Colors.purple),
            ],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            backgroundColor: Colors.black,
            onTap: onTap,
            currentIndex: _currentIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            unselectedFontSize: 0,
            selectedFontSize: 0,
            items: const [
              BottomNavigationBarItem(
                  label: "Chat",
                  icon: Icon(
                    Icons.chat,
                  ),
                  backgroundColor: Colors.black
              ),
              BottomNavigationBarItem(
                  label: "Contacts",
                  icon: Icon(Icons.phone),
                  backgroundColor: Colors.black
              ),
              BottomNavigationBarItem(
                  label: "Me",
                  icon: Icon(Icons.person),
                  backgroundColor: Colors.black
              ),
            ],
          )
        ),
      )
    );
  }
}
