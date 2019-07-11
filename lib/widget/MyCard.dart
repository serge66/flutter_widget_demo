import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  MyCard({this.title = "Demo"});
  final String title;
  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(widget.title),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          )),
      body: MyBody(),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Image.network(
                  "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png"),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text("哈喽这是标题"),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Image.network(
                  "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png"),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text("哈喽这是标题"),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Image.network(
                  "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png"),
              SizedBox(
                height: 10,
              ),
              ListTile(
                leading: ClipOval(
                  child: Image.network(
                    "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text("哈喽这是标题"),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        )
      ],
    );
  }
}