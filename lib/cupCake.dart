import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore: must_be_immutable
class LCupCake extends StatefulWidget {
  var tile;
  LCupCake(this.tile, {Key key}): super(key:key);
      @override
  _LCupCakeState createState() => _LCupCakeState();
}

class _LCupCakeState extends State<LCupCake> {
  List<ImageProvider> type = [
    NetworkImage(
        'https://livforcake.com/wp-content/uploads/2017/07/black-forest-cake-thumb-500x500.jpg'),
    NetworkImage(
        'https://static.toiimg.com/thumb/53096885.cms?imgsize=1572013&width=800&height=800'),
    NetworkImage(
        'https://handletheheat.com/wp-content/uploads/2015/03/Best-Birthday-Cake-with-milk-chocolate-buttercream-SQUARE.jpg'),
    NetworkImage(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScVmRLXhhLx0v6LZL7nBVmdKZte5CYMEqHMXfydHWad6P3H-CNQEJWYfKesFYGZUc1BJg&usqp=CAU'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo,
        child: ListView(
          shrinkWrap: true,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
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
                          child: Text(
                    widget.tile['title'],
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ))),
                  Icon(
                    Icons.share_outlined,
                    size: 30.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(height: 35.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(19.0),
                    topRight: Radius.circular(19.0)),
                color: Colors.grey[200],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.title_outlined,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                          child: Text(
                            'Title',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        // border: Border.all(color: Colors.blueAccent),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          widget.tile['title'],
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.link_outlined,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                          child: Text(
                            'Url',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        // border: Border.all(color: Colors.blueAccent),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "http://facebook.com/adeetdahal",
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[600]),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.book_outlined),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                          child: Text(
                            'Description',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        // border: Border.all(color: Colors.blueAccent),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          "Rich Dad Poor Dad is a 1997 book written by Robert Kiyosaki and Sharon Lechter. It advocates the importance of financial literacy (financial education), financial independence and building wealth through investing in assets, real estate investing, starting and owning businesses, as well as increasing one's financial intelligence (financial IQ).s life.[1] The titular is purportedly his friend's father who accumulated wealth due to entrepreneurship and savvy investing, while the is claimed to be Kiyosaki's own father who he says worked hard all his life but never obtained financial security. However, no one has ever proven that Rich Dad, the man who supposedly gave Kiyosaki all his advice for wealthy living, ever existed. Nor has anyone ever documented any vast reserves of wealth earned by Kiyosaki prior to the publication of Rich Dad Poor Dad in 1997.",
                          style:
                              TextStyle(fontSize: 15, color: Colors.grey[600]),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.photo_album_outlined),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 3.0),
                          child: Text(
                            'Photos',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.indigo[100],
                          borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        ),
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: type.length+1,
                            itemBuilder: (context, index) {
                              if (index == 0) {
                                return Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    width: 65,
                                      decoration: BoxDecoration(
                                        // shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(25.0)),
                                          color: Colors.indigo[100],
                                          border: Border.all(
                                              color: Colors.indigo[300],
                                              width: 2.0)),
                                    child: Icon(Icons.add,color: Colors.indigo[300],)
                                  ),
                                );

                              } else {
                                return Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    width: 65,
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          child: Image(
                                            image: type[index-1],
                                          ),
                                          borderRadius: BorderRadius.circular(25.0),
                                          
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }
                            }),
                      ),
                    ),
                    ButtonBar(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('cancel'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shadowColor: Colors.indigo[700],
                                onPrimary: Colors.indigo[700],
                                side:
                                    BorderSide(color: Colors.blue, width: 1.0),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(6.0)))),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('save'),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.indigo[700],
                                shadowColor: Colors.indigo[700],
                                onPrimary: Colors.white,
                                side:
                                    BorderSide(color: Colors.blue, width: 1.0),
                                shape: BeveledRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(6.0)))),
                          ),
                        ],
                        alignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
