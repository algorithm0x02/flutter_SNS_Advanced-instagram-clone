import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(icon: Icon(Icons.exit_to_app),
            onPressed: null)
      ],
    );
  }

  Widget _buildBody() {
    return Padding(padding: EdgeInsets.all(16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                SizedBox(
                  width: 80,
                  height: 80,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/9/94/191025_%EC%9D%B4%EC%B2%AD%EC%95%84.jpg'),
                  )
                ),
                Container(
                  width: 80,
                  height: 80, // <--------------질문 QQQ 왜 넣어야 하는지,
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 25,
                    height: 25,
                    child: FloatingActionButton(onPressed: null,
                    //backgroundColor: Colors.blue,
                    child: Icon(Icons.add)),
                  ),
                )
              ],
            ),
    Padding(padding: EdgeInsets.all(8)),
            Text('이름름fm',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),)
            
          ],
        ),
        Text('0\n게시글',
        textAlign: TextAlign.center,),
        Text('0\n팔로워',
            textAlign: TextAlign.center),
        Text('0\n팔로잉',
            textAlign: TextAlign.center),
      ],
    ),)
    ;
  }
  
}
