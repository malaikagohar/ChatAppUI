import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  // ignore: non_constant_identifier_names
  final List<String> Username = [
    'Aleena Atta Shaikh',
    'Hafsa Khan',
    'Fatima Shehzad',
    'Malaika Gohar',
    'Fariya Asif',
    'Ammara Khan',
    'Esha Khan',
    'Mehwish Alam',
    'Rameen Ekram',
    'Tehreem Ekram',
  ];

  // ignore: non_constant_identifier_names
  final List<String> Messages = [
    'Hello',
    'How are you?',
    'Call you back later!',
    'Who\'s this?',
    'I will be back in 2 days',
    'You\'re welcome!',
    'Thank You',
    'Acknowledged',
    'I am busy',
    'See you soon'
  ];

  // ignore: non_constant_identifier_names
  final dynamic Images = [
    'assets/dp1.jpeg',
    'assets/dp2.jpeg',
    'assets/dp3.jpeg',
    'assets/dp4.jpeg',
    'assets/dp5.jpeg',
    'assets/dp6.jpeg',
    'assets/dp7.jpeg',
    'assets/dp1.jpeg',
    'assets/dp2.jpeg',
    'assets/dp3.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(61),

          child: AppBar(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100))
              ),
              elevation: 3,

              shadowColor: Colors.purple,

              backgroundColor: Colors.black,

              title: const Text("Conversations",
                  style: TextStyle(
                      color: Colors.white, 
                      letterSpacing: 0.5, 
                      fontSize: 20)
                  ),

              leading: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )
              ),

              actions: [
                IconButton(
                    icon: const Icon(Icons.search_rounded),
                    tooltip: 'Search chats',
                    onPressed: () {}
                )
              ]
          ),
        ),

        body: ListView.builder(
            itemCount: Messages.length,
            
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8),
                tileColor: Colors.black,
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(Images[index]),
                ),
                trailing: const Text("5:43"),
                title: Text(
                  Username[index],
                  style: const TextStyle(
                    color: Colors.white, 
                    fontSize: 16
                  ),
                ),
                subtitle: Row(
                  children: [
                    const Icon(Icons.done_all, size: 15),
                    const SizedBox(
                      width: 3,
                    ),
                    Text(
                      Messages[index],
                      style: const TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              );
            }
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.purple,
          splashColor: Colors.black,
          child: const Icon(
            Icons.message,
            color: Colors.white,
            size: 25,
          ),
        ),
      ),
    );
  }
}
