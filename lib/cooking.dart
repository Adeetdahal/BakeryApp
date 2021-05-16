import 'package:demo/cupCake.dart';
import 'package:demo/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

List type = ['All', 'Cake', 'Fast Food', 'Kabab', 'KFC special'];
List tile = [
  {
    'image': NetworkImage(
        'https://livforcake.com/wp-content/uploads/2017/07/black-forest-cake-thumb-500x500.jpg'),
    'title': 'Vanilla Cake'
  },
  {
    'image': NetworkImage(
        'https://images.unsplash.com/photo-1578985545062-69928b1d9587?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8&w=1000&q=80'),
    'title': 'Blackforest Cake'
  },
  {
    'image': NetworkImage(
        'https://img-global.cpcdn.com/recipes/2c38a48089db9b8e/751x532cq70/heart-cake-recipe-main-photo.jpg'),
    'title': 'Cupcake'
  },
  {
    'image': NetworkImage(
        'https://handletheheat.com/wp-content/uploads/2015/03/Best-Birthday-Cake-with-milk-chocolate-buttercream-SQUARE.jpg'),
    'title': 'Pancake'
  },
  {
    'image': NetworkImage(
        'https://storcpdkenticomedia.blob.core.windows.net/media/recipemanagementsystem/media/recipe-media-files/recipes/retail/desktopimages/rainbow-cake600x600_2.jpg?ext=.jpg'),
    'title': 'Donut'
  },
  {
    'image': NetworkImage(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScVmRLXhhLx0v6LZL7nBVmdKZte5CYMEqHMXfydHWad6P3H-CNQEJWYfKesFYGZUc1BJg&usqp=CAU'),
    'title': 'Whiteforest Cake'
  },
];

// ignore: must_be_immutable
class Cooking extends StatefulWidget {
  var category;

  Cooking(this.category, {Key key}) : super(key: key);

  @override
  _CookingState createState() => _CookingState();
}

class _CookingState extends State<Cooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            // physics: NeverScrollableScrollPhysics(),
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              appbar(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  // color: Colors.grey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Labels',
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0),
                        child: Container(
                          // color: Colors.grey,
                          height: 60,
                          // child: FloatingActionButton(
                          //   onPressed: () {},
                          //   backgroundColor: Colors.white,
                          //   child: Icon(Icons.add_outlined,color: Colors.blue,),
                          // ),
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: type.length + 1,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                if (index == 0) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Chip(
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(color: Colors.indigo[200],width: 2.0),
                                          borderRadius:
                                              BorderRadius.circular(20.0)),
                                      // margin: EdgeInsets.all(15.0),
                                      // padding: EdgeInsets.symmetric(vertical:0.0,horizontal: 5.0),
                                      // decoration: BoxDecoration(
                                      //   // shape:BoxShape.circle,
                                      //   borderRadius:BorderRadius.all(Radius.circular(15.0)),
                                      //   border: Border.all(color: Colors.indigo[200],width:2.0,),
                                      //   color: Colors.white
                                      // ),
                                      backgroundColor: Colors.white,
                                      label: Icon(
                                        Icons.add_outlined,
                                        color: Colors.indigo[200],
                                      ),
                                    ),
                                  );
                                } else {
                                  return InkWell(
                                    // splashColor: Colors.indigo,
                                    highlightColor: Colors.red,
                                    // focusColor: Colors.blue,
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Test()));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Chip(
                                        label: Text(
                                          type[index - 1],
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16),
                                        ),
                                        backgroundColor: Colors.indigo[200],
                                        labelStyle:
                                            TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  );
                                }
                              }),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Bookmarks',
                              style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                          ),
                          Icon(Icons.account_balance_outlined,
                              color: Colors.indigo),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 3.0),
                            child: Icon(Icons.business, color: Colors.indigo),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0.0, horizontal: 3.0),
                            child: Icon(Icons.thumbs_up_down,
                                color: Colors.indigo),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 3.0),
                        child: Row(
                          children: [
                            Icon(Icons.bookmarks_outlined, color: Colors.grey),
                            Text(
                              '100',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      Container(child: products()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // ignore: dead_code
  }

  Widget products() {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: tile.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LCupCake(tile[index])));
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 0.0),
            child: Card(
              elevation: 6,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              child: ListTile(
                leading: Container(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Image(
                        image: tile[index]['image'],
                        width: 60,
                        height: 55,
                      )),
                ),
                // CircleAvatar(
                //   child: ClipRRect(
                //     borderRadius: BorderRadius.circular(25.0),
                //       child: Image(image: tile[index]['image'],)),
                // ),
                title: Text(tile[index]['title']),
                subtitle: Row(
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.grey,
                    ),
                  ],
                ),
                trailing: CircleAvatar(
                  child: Icon(
                    Icons.book,
                    color: Colors.white,
                  ),
                  backgroundColor: Colors.orange,
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget appbar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.indigo,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15.0),
            bottomRight: Radius.circular(15.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 15.0),
            Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 30.0,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: Center(
                    child: Text(widget.category['text'],
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  ),
                ),
                Icon(Icons.notifications, color: Colors.white, size: 25.0),
              ],
            ),
            SizedBox(height: 20.0),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.indigo[300],
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ),
                labelText: 'What bookmark are you searching for ? ',
                labelStyle: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
