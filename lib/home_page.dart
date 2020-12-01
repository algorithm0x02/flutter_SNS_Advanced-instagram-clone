import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'insta123',
        style: TextStyle(color:  Colors.blue, fontWeight: FontWeight.bold)
      ),
      ),
      body: _buildBody(),
    );
  }
  Widget _buildBody() {
    return Padding(padding: EdgeInsets.all(8.0),
    child: Center(
      child: Column(
        children: <Widget>[
          Text('Insta에 오신 것을 환영합니다.',
          style: TextStyle(fontSize: 25),),
          Padding(padding: EdgeInsets.all(30.0)),
          SizedBox(
            width: 240,
            child: Card(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(10.0)),
                  SizedBox(
                    width: 80,
                      height:  80,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage('https://i.pinimg.com/originals/39/07/b8/3907b88139641df093fc0c3245bc9fc7.jpg'),
                      ),
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                  Text('email@gmail.com', style: TextStyle(fontWeight: FontWeight.bold),),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Text('Moon'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRj6pIm7nKU5v2aUhInBe1LFtrzL9yotT03yg&usqp=CAU'),
                      ),
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: Image.network('https://cdnimg.melon.co.kr/cm2/album/images/103/51/886/10351886_500.jpg?9d7fa0be44289144e201dc52a9371c24'),
                      ),
                      SizedBox(
                        width: 70,
                        height: 70,
                        child: Image.network('https://jimg.soribada.com/Jacket/Full/K/D/0/0/3/KD0033281.jpg'),
                      )
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(5.0)),
                  Text('Facebook 친구'),
                  Padding(padding: EdgeInsets.all(3.0)),
                  RaisedButton(
                    child: Text('팔로우'),
                    onPressed: () {},
                  ),
                  Padding(padding: EdgeInsets.all(10.0)),
                ],
              ),
            ),
          )
        ],
      ),
    )
    );
  }
}


