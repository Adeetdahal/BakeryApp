import 'package:demo/cooking.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
List category = [
  {"img": AssetImage('assets/bulb.png'), 'text': 'New Ideas'},
  {'img': AssetImage('assets/music.jpeg'), 'text': 'Music'},
  {'img': AssetImage('assets/computer.png'), 'text': 'Programming'},
  {'img': AssetImage('assets/cooking.png'), 'text': 'Cooking'},
  {'img': AssetImage('assets/aeroplane.png'), 'text': 'Flight'},
  {'img': AssetImage('assets/space.png'), 'text': 'Space'}
];
var clr = [
  {
    'color': Colors.orangeAccent.withOpacity(0.3),
  },
  {'color': Colors.lightBlueAccent},
  {'color': Colors.blueAccent},
  {'color': Colors.pinkAccent.withOpacity(0.3)},
  {'color': Colors.greenAccent},
  {'color': Colors.orangeAccent},
];

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            // shrinkWrap: true,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appbar(),
              Container(
                padding: EdgeInsets.all(10.0),
                // color: Colors.grey,
                child: Column(
                  // shrinkWrap: true,
                  // scrollDirection: Axis.vertical,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 8.0),
                            child: Text('Categories',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18.0)),
                          ),
                        ),
                        Icon(
                          Icons.hourglass_empty,
                          size: 25.0,
                          color: Colors.indigo[200],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(
                            Icons.wallpaper,
                            size: 25.0,
                            color: Colors.indigo[200],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0),
                          child: Icon(
                            Icons.thumbs_up_down,
                            size: 25.0,
                            color: Colors.indigo,
                          ),
                        ),
                      ],
                    ),
                    mainbody(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

    }
  }
Widget appbar(){
 return Container(
    decoration: BoxDecoration(
      color: Colors.indigo,
      borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0)),
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 35.0, horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 15.0),
          Row(
            children: [
              Icon(Icons.menu_book_outlined,
                  color: Colors.white, size: 25.0),
              Expanded(child: Container()),
              Icon(Icons.notifications,
                  color: Colors.white, size: 25.0),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 8.0, horizontal: 0.0),
            child: Text('Hi Adeet',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 5.0, horizontal: 0.0),
            child: Text('Welcome Back',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Colors.indigo[200],
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                borderSide: BorderSide(color: Colors.black),
              ),
              prefixIcon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              ),
              labelText: 'What category are you searching for ? ',
              labelStyle: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    ),
  );
}
AppBar appbarr(){
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: Icon(Icons.widgets),
    actions: [
      Icon(Icons.widgets),
    ],
  );
}
Widget mainbody(){
  return Container(
    child: GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // childAspectRatio: 3 / 2,
        // mainAxisSpacing: 20,
        // crossAxisSpacing: 20
      ),
      itemCount: category.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Cooking(category[index])));
            },
            child: Container(
              // height: 80,
              decoration: BoxDecoration(
                color: clr[index]['color'],
                borderRadius:
                BorderRadius.all(Radius.circular(15.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:
                CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: category[index]['img'],
                    maxRadius: 40.0,
                  ),
                  SizedBox(height: 15.0),
                  Text(category[index]['text']),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}
