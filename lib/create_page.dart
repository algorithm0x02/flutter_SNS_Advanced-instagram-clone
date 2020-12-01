

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  File _image; // <-----  질

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(onPressed: _getImage,
      child: Icon(Icons.camera),
      ),
    );
  }




  _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(icon: Icon(Icons.send),
            onPressed: (){})
      ],
    );
  }


  _buildBody() {
    return Column(
        children: [
          if (_image == null) Text('No image') else Image.file(_image),
          TextField(
            decoration: InputDecoration(hintText: '내용을 입력하tpdy'),
            controller: textEditingController,
          )
        ],
    );
  }

  Future<void> _getImage() async {
    File image = await ImagePicker.pickImage(source: ImageSource.gallery);// 비동기 입력과 출력이 동시가 아니다.
    // Future<File> image = await ImagePicker.pickImage(source: ImageSource.gallery); 에러
    _image= image;
    setState((){
      _image = image;
    });
  }
}
