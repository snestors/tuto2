//import 'dart:html';

import 'package:flutter/material.dart';

// Import the firebase_core and cloud_firestore plugin
//import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddUser extends StatelessWidget {
  final String fullName;
  final String company;
  final int age;

  AddUser(this.fullName, this.company, this.age);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
            'full_name': fullName, // John Doe
            'company': company, // Stokes and Sons
            'age': age // 42
          })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return TextButton(
      onPressed: addUser,
      child: Text(
        "Add User",
      ),
    );
  }
}

class LeerUser extends StatelessWidget {
  LeerUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection("users");
    return FutureBuilder<DocumentSnapshot>(
      future: users.doc("6P3A7nMCUxOqq46dyHbd").get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }
        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Documento no Existe");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          return Text("${data}");
        }

        return Text("Loading");
      },
    );
  }
}

class LeeUserColections extends StatefulWidget {
  const LeeUserColections({Key? key}) : super(key: key);

  @override
  State<LeeUserColections> createState() => _LeeUserColectionsState();
}

class _LeeUserColectionsState extends State<LeeUserColections> {
  final Stream<QuerySnapshot> _userStream = FirebaseFirestore.instance
      .collection("users")
      .snapshots(includeMetadataChanges: true);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _userStream,
        builder: (BuildContext contex, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text("Algo salio mal");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("loading");
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot e) {
              DocumentSnapshot data = e;
              return ListTile(
                title: Text("data['full_name']"),
                subtitle: Text("data['company']"),
                onTap: () {
                  print(data.id);
                },
              );
            }).toList(),
          );
        });
  }
}
