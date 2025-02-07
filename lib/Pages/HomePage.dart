import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  final List<Map<String, dynamic>> Electronics;

  const Homepage({super.key, required this.Electronics});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.blue,
        title: const Text('Product Navigation',style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child:Column(
        children: [
          SizedBox(height: 20,),
          for(var i = 0; i<widget.Electronics.length; i++) 
          Padding(padding: const EdgeInsets.all(8.0),
          child:GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/viewDetails', arguments: widget.Electronics[i]);
            },
            child:  Row(
            children: [
              SizedBox(height: 130,),
              Container(
                height: 115,
                width: 200,
                decoration: BoxDecoration(
                  color:  widget.Electronics[i]['color'],
                ),
                child:  Center(child:Text(widget.Electronics[i]['title'], style: TextStyle(color: Colors.white,fontSize: 30),)),
              ),
              SizedBox(width: 13,),
              Container(
                height: 115,
                width: 200,

                child:  Column(
                  children: [
                    Text(widget.Electronics[i]['title'],style: TextStyle(fontWeight: FontWeight.bold),),
                    Text(widget.Electronics[i]['description'],style: TextStyle(),),
                    Center(child: Text("price : ${widget.Electronics[i]['price']}"),),
                    SizedBox(height: 10,width: 10,),
                    Row(
            mainAxisAlignment: MainAxisAlignment.end, // Pushes children to the right
            children: List.generate(3, (index) => Padding(
              padding: const EdgeInsets.only(left: 10), // Adds space
              child: Icon(widget.Electronics[i]['rating'] ? Icons.star: Icons.star_outline, color: Colors.red),
            ),),
                   ),
                  ],
                ),
              )
          ],),
          ),
          )
        ],
      ),
        )
      
    );
  }
}