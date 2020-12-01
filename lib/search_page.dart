import 'package:flutter/material.dart';
import 'package:instagram_clon_by_som/create_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => CreatePage()));
        },
      child: Icon(Icons.create),
      ),
    );
  }

  _buildBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 1.0
        ),
        itemCount: 5,
        itemBuilder: (context, index){
          return _buildListItem(context, index);
        });
  }

  _buildListItem(BuildContext context, int index) {
    return Image.network('https://upload.wikimedia.org/wikipedia/commons/b/ba/191114_%EB%A7%88%EB%A7%88%EB%AC%B4_%EA%B8%B0%EC%9E%90_%EC%A7%88%EC%9D%98%EC%9D%91%EB%8B%B5_%EC%A0%84%EC%B2%B4%EC%98%81%EC%83%81_%28MAMAMOO_%27reality_in_BLACK%27_%EC%87%BC%EC%BC%80%EC%9D%B4%EC%8A%A4%29_3m_15s.jpg',
    fit: BoxFit.cover);
  }
}
