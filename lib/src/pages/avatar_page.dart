import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Avatar Page"),
      actions: <Widget>[

        Container(
          padding: const EdgeInsets.all(5),
          child: const CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg/800px-Stan_Lee_by_Gage_Skidmore_3.jpg"),
            radius: 20,
          ),
        ),

        Container(
          margin: const EdgeInsets.only(right: 10),
          child: const CircleAvatar(
            child: Text("SL"),
            backgroundColor: Colors.brown,
          ),
        )
        
      ],),
      body: const Center(child: FadeInImage(
      image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg/800px-Stan_Lee_by_Gage_Skidmore_3.jpg"),
      placeholder: AssetImage('assets/jar-loading.gif'),)),
    );
  }
}