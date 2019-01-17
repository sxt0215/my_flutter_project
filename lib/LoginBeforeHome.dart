import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_seekbar/flutter_seekbar.dart'
    show ProgressValue, SectionTextModel, SeekBar;

class LoginBeforeHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          //第一行 banner 图片内容
          new Image.asset(
            "assets/images/banner.png",
            width: 600.0,
            height: 150.0,
            fit: BoxFit.contain,
          ),

          new Container(
            margin: const EdgeInsets.all(27.0),
            height: 175.0,
            /**
             * 叠加布局  相当于Android中的绝对布局
             * */
            child: new Stack(
              children: <Widget>[
                new Image.asset(
                  "assets/images/cir.png",
                  fit: BoxFit.contain,
                ),
                new Positioned(
                  left: 125.0,
                  top: 20.0,
                  child: new Text(
                    "借款金额",
                    style: new TextStyle(color: Colors.black, fontSize: 14.0),
                  ),
                ),
                new Positioned(
                  left: 100.0,
                  top: 70.0,
                  child: new Text(
                    "10000Rp",
                    style: new TextStyle(color: Colors.black, fontSize: 24.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(28, 110, 0, 0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 6),
                        width: 250,
                        child: SeekBar(
                          progresseight: 10,
                          value: 0.2,
                        ),
                      ),
                    ],
                  ),
                ),
                new Positioned(
                  top: 130,
                  left: 15,
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        "1000Rp",
                      ),
                    ],
                  ),
                ),
                new Positioned(
                  top: 130,
                  right: 15,
                  child: new Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      new Text("1000000Rp"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
