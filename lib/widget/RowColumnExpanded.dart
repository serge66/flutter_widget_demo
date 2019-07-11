import 'package:flutter/material.dart';

class RowColumnExpanded extends StatefulWidget {
  RowColumnExpanded({this.title});
  String title = "Demo";
  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<RowColumnExpanded> {
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
    return Container(
      child: Column(
        children: <Widget>[
          Image.network(
              "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png"),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image.network(
                    "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png"),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Image.network(
                        "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png"),
                    SizedBox(
                      height: 10,
                    ),
                    Image.network(
                        "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png")
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
