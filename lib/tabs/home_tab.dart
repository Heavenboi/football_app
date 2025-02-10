import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  List<String> images = [
    "asset/images/pic1.jpg",
    "asset/images/pic2.jpg",
    "asset/images/pic3.jpg",
  ];

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
            IconButton(onPressed: () {}, icon: Icon(Icons.search))
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Text(
                'Live Match',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 200,
                  width: 280,
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(
                        images[index],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Premier League",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "Week 10",
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          // column 1
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  "asset/images/image1.png",
                                  height: 45,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Newcastle",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Home",
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // column 2
                          Column(
                            children: [
                              Text(
                                "0:3",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                ),
                              ),
                              TextButton(
                                onPressed: () {},
                                style: TextButton.styleFrom(
                                  side: BorderSide(
                                    color: Colors.purple,
                                  ),
                                ),
                                child: Text("83"),
                              ),
                            ],
                          ),
                          // column 3
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  "asset/images/image2.png",
                                  height: 45,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  "Chelsea",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  "Away",
                                  style: TextStyle(
                                    color: Colors.white54,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
