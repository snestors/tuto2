import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: _createListView(),
    );
  }

  Widget _createListView() {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: <Widget>[
        _card1(),
        const SizedBox(height: 8.0),
        _card2(),
       
             

      ],
    );
  }

  Widget _card1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          const ListTile(
              leading: Icon(
                Icons.photo_album,
                color: Colors.blue,
              ),
              title: Text("Titulo de la Tarjeta"),
              subtitle: Text(
                  "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ")),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Cancel",
                    style: TextStyle(color: Colors.black),
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Text("Ok", style: TextStyle(color: Colors.black))),
            ],
          )
        ],
      ),
    );
  }

  Widget _card2() {
    return Card(
      
      
      shadowColor: Colors.blue[600],
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(children: <Widget>[

        const FadeInImage(
          image: NetworkImage(
                "https://cdn.dribbble.com/users/1803663/screenshots/11400179/media/25558ede8bcb553fd48d7ed339e136ee.png"),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 600),
          height: 400,
          fit: BoxFit.cover,
        ),

        /*Image(
            image: NetworkImage(
                "https://cdn.dribbble.com/users/1803663/screenshots/11400179/media/25558ede8bcb553fd48d7ed339e136ee.png")),*/
        Container(
          padding: const EdgeInsets.all(10.0),
          child: const Text("Nose q poner", ))
      ]),
    );
  }
}
