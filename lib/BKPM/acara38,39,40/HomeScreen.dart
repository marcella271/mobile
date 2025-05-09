import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project4/BKPM/acara38,39,40/LoginScreen.dart';

class HomeScreen extends StatelessWidget {
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null){
    print(auth.currentUser!.email);
  }
  return Scaffold(
    body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
              IconButton(onPressed: () {}, icon: Icon(Icons.extension))
            ],
          ),
          SizedBox(height: 37),
          Text.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Welcome. \n",
                  style: TextStyle(color: Colors.blue[300]),
                ),
                TextSpan(
                  text: auth.currentUser!.email,
                  style: TextStyle(color: Colors.blue[900]),
                ),
              ],
            ),
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, size:18),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)),
              hintText: "Search"),
          ),
          SizedBox(height: 10),
          Text(
            "Recommended Place",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                _signOut().then((Value) =>Navigator.of(context)
                .pushReplacement(MaterialPageRoute(
                  builder: (context) => LoginScreen())));
              },
               child: Text('Logout')),
          )
        ],
      ),),
  );
}
}