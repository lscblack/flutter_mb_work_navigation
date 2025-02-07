import 'package:flutter/material.dart';

class Viewdetails extends StatefulWidget {

  @override
  State<Viewdetails> createState() => _ViewdetailsState();
}

class _ViewdetailsState extends State<Viewdetails> {
  @override
  Widget build(BuildContext context) {
        // Get the arguments passed from previous screen
    final Map<String, dynamic>? Electronics =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    // Check if data exists
    if (Electronics == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Details')),
        body: const Center(child: Text('No data available')),
      );
    }
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title:  Text(Electronics["title"],style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            color: Electronics["color"],
            child: Center(child: Text(Electronics["title"],style: TextStyle(color: Colors.white,fontSize: 80))),
          ),
          SizedBox(height: 45,),
          Text(Electronics["title"],style: TextStyle(color: Colors.black,fontSize:30)),
          SizedBox(height: 30,),
          Text(Electronics["description"]),
          SizedBox(height: 45,),
          Text("Price: ${Electronics["price"]}"),
          SizedBox(height: 20,),
         Padding(
           padding: const EdgeInsets.all(30.0),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.end, // Pushes children to the right
            children: List.generate(3, (index) => Padding(
              padding: const EdgeInsets.only(left: 10), // Adds space
              child: Icon(Electronics['rating'] ? Icons.star: Icons.star_outline, color: Colors.red),
            ),),
                   ),
         )


        ],
      ),
    );
  }
}