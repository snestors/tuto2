import 'package:flutter/material.dart';


class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Avatar Page"),
      actions: <Widget>[

        Container(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg/800px-Stan_Lee_by_Gage_Skidmore_3.jpg"),
            radius: 20,
          ),
        ),

        Container(
          margin: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            child: Text("SL"),
            backgroundColor: Colors.brown,
          ),
        )
        
      ],),
      body: Center(child: FadeInImage(
      image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Stan_Lee_by_Gage_Skidmore_3.jpg/800px-Stan_Lee_by_Gage_Skidmore_3.jpg"),
      placeholder: AssetImage('assets/jar-loading.gif'),)),
    );
  }
}