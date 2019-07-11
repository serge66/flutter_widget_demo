import 'package:flutter/material.dart';

class MyGridView extends StatefulWidget {
  MyGridView({this.title});
  final String title;
  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyGridView> {
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
  List list = new List();
  MyBody() {
    for (int i = 0; i < 30; i++) {
      list.add("我是列表第$i 条");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.yellow,
            child: Column(
              children: <Widget>[
                Image.network(
                    "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png"),
                SizedBox(
                  height: 10,
                ),
                Text(
                  list[index],
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
