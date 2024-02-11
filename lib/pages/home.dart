import 'package:flutter/material.dart';
import 'package:uipractice/utils/emotface.dart';
import 'package:uipractice/utils/list_tile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.edit), label: 'edit')
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //greeting row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi, Sushid!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '11 Jan 2024',
                            style: TextStyle(color: Colors.blue[200]),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[600],
                            borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.all(12),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  //search bar
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.white),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),

                  //how do you feel section

                  SizedBox(
                    height: 25,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      )
                    ],
                  ),

                  SizedBox(
                    height: 25,
                  ),

                  //4 differnet faces

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //bad
                      Column(
                        children: [
                          EmotIconFace(emoticonFace: '😞'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Bad',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //fine

                      Column(
                        children: [
                          EmotIconFace(emoticonFace: '🙂'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Fine',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //well

                      Column(
                        children: [
                          EmotIconFace(emoticonFace: '😆'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Well',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),

                      //excellent

                      Column(
                        children: [
                          EmotIconFace(emoticonFace: '😎'),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            'Excellent',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: Center(
              child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[300],
                child: Column(
                  children: [
                    //excersise heading

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exercises',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    //list view
                  Expanded(
                      child: ListView(
                        children: [
                          ExcerciseTile(
                            icon: Icons.favorite,
                            excerciseName: 'Speaking Skills',
                            numberOfExcercise: 16,
                            color: Colors.orange,
                          ),
                          ExcerciseTile(
                            icon: Icons.person,
                            excerciseName: 'Reading Skills',
                            numberOfExcercise: 8,
                            color: Colors.green,
                          ),

                          ExcerciseTile(
                            icon: Icons.star,

                            excerciseName: 'Writing Skills',
                            numberOfExcercise: 16,
                            color: Colors.pink,
                          ),
                        ],
                      )

                  )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
