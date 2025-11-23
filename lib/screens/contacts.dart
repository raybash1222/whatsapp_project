import 'package:flutter/material.dart';
import 'package:whatsapppro/first_screen.dart';
import 'package:whatsapppro/models/contact.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<Contact> contact = [
    Contact(
      profile: "assets/images/png/59-599190_png-one-piece-anime-transparent-background-luffy-chibi.png",
      name: "Mom",
      message: "Hello",
      lastseen: "22/11/25",
    ),
    Contact(
      profile: "assets/images/png/pngtree-nature-s-breathtaking-reflection-a-captivating-view-of-the-enchanting-forest-image_13565685.png",
      name: "Dad",
      message: "Hi",
      lastseen: "11/11/25",
    ),
    Contact(
      profile: "assets/images/png/png-clipart-whatsapp-computer-icons-logo-whatsapp-text-logo.png",
      name: "Abd",
      message: "Bye",
      lastseen: "31/10/25",
    ),
    Contact(
      profile: "assets/images/png/21.21-min-1.png",
      name: "Fawziah",
      message: "How are you",
      lastseen: "31/10/25",
    ),
    Contact(
      profile: "assets/images/png/pngtree-isolated-front-view-cat-on-white-background-png-image_9158426.png",
      name: "Rama",
      message: "hey",
      lastseen: "30/10/25",
    ),
    Contact(
      profile: "assets/images/png/248-2485141_nature-frames-nature-green-leaf-background-hd.png",
      name: "Mohamed",
      message: "Salam",
      lastseen: "29/10/25",
    ),
    Contact(
      profile: "assets/images/png/pngtree-isolated-cat-on-white-background-png-image_7094927.png",
      name: "Kj",
      message: "How are you",
      lastseen: "22/10/25",
    ),
    Contact(
      profile: "assets/images/png/anime-poster.png",
      name: "Laila",
      message: "How are you",
      lastseen: "20/10/25",
    ),
    Contact(
      profile: "assets/images/png/images.png",
      name: "Rena",
      message: "How are you",
      lastseen: "19/10/25",
    ),
    Contact(
      profile: "assets/images/png/png-transparent-animated-man-wearing-zip-up-jacket-art-itachi-uchiha-boy-anime-sadness-depression-depressed-love-textile-people-thumbnail.png",
      name: "Helen",
      message: "How are you",
      lastseen: "19/10/25",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(decoration: InputDecoration(
                hintText: "Ask Meta AI or Search",
                hintStyle: TextStyle(color: Colors.black45),
                prefixIcon: Icon(Icons.search,color: Colors.black45,),
                filled: true,
                fillColor: Colors.white70,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                )
              ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: contact.length,
                  itemBuilder:(context, index) {
                    return InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(
                            builder: (context) => FirstScreen(index: index),),
                          );
                        },
                        child: Container(
                          color: Colors.black87,
                          height: 75,
                          width: 75,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(radius: 25,
                                backgroundImage: AssetImage(
                                    "${contact[index].profile}"),),
                              SizedBox(width: 12,),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween,
                                      children: [
                                        Text("${contact[index].name}",
                                          style: TextStyle(
                                            color: Colors.white, fontSize: 18,),
                                          overflow: TextOverflow.ellipsis,),
                                        Text("${contact[index].lastseen}",
                                          style: TextStyle(color: Colors.white,
                                            fontSize: 12,),),
                                      ],
                                    ),
                                    Text("${contact[index].message}",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
