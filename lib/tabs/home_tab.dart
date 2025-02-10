import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: CircleAvatar(
              radius: 28,
            ),
          ),
              Text('Live Football'),
              IconButton(onPressed: (){}, icon: Icon(Icons.search))
            ],
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 12,),
                Text('Live Match'),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              height: 400,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(40),
                //image: Image(image: Image.asset('asset/images/pic1.jpg'))
              ),

            ),
          ],
        ),
    );
  }
}
