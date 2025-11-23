import 'package:flutter/material.dart';
import 'package:whatsapppro/models/contact.dart';
import 'package:whatsapppro/screens/contacts.dart';
import 'package:whatsapppro/screens/first_Page.dart';
class FirstScreen extends StatefulWidget {
  final int index;
  const FirstScreen({super.key, required this.index});

  @override
  State<FirstScreen> createState() => _FirstScreenState();

}

class _FirstScreenState extends State<FirstScreen> {
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
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => FirstPage(),),);
                }, icon: Icon(Icons.arrow_back)),
        titleSpacing: 0,
        title:
           Row(
             mainAxisAlignment: MainAxisAlignment.start,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 5),
                 child: CircleAvatar(
                   radius: 20 ,
                   backgroundImage:  AssetImage(contact[widget.index].profile ?? " "),),
               ),
               Expanded(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.spaceAround,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(contact[widget.index].name ?? " ",overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 20),),
                     Text("online",style: TextStyle(fontSize: 12),),
                   ],
                 ),
               ),
             ],
    ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.videocam_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call_outlined)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
          ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 1,
                itemBuilder: (context, index){
                  return Row(
                    children: [
                      Container(
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                              contact[widget.index].message ?? " ",
                              style: TextStyle(fontSize: 16),),
                              Text(
                                contact[widget.index].lastseen ?? " ",
                                style: TextStyle(fontSize: 8),),
                            ],
                          ),

                        ],
                      ),

                    ),
                  ],
                  );
                },
                  separatorBuilder: (context, index){
                    return SizedBox(height: 10,);
                  },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child:
                  TextField(decoration: InputDecoration(
                      hintText: "Message",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.emoji_emotions_outlined),
                      suffixIcon: IntrinsicWidth(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.book_outlined),
                            SizedBox(width: 8,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.camera_alt_outlined),
                            ),
                          ],
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      )
                  ),
                  ),
                ),
                IconButton(onPressed: () {},
                  icon: Icon(Icons.mic),)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
