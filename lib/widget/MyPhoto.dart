import 'package:flutter/material.dart';

class MyPhoto extends StatefulWidget {
  MyPhoto({this.title});
  final String title;
  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyPhoto> {
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
  var clipOval = ClipOval(
    child: Image.network(
      "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png",
      width: 100,
      height: 100,
      fit: BoxFit.contain,
    ),
  );

  var image = Image.network(
    "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png",
    alignment: Alignment.center,
    color: Colors.grey,
    colorBlendMode: BlendMode.colorBurn,
    // fit: BoxFit.contain,
    // repeat: ImageRepeat.repeatY,
    // height: 500,
  );

  var localImage = Image.asset(
    'images/a.png',
    fit: BoxFit.cover,
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(150),
          // image: DecorationImage(
          //     image: NetworkImage(
          //         "https://s.beta.gtimg.com/rdmimg/exp/image2/2019/07/10/_bc853cd0-366d-4b54-bff1-f62597991e8d.png"),
          //     fit: BoxFit.cover),
        ),
        child: clipOval,
      ),
    );
  }
}
