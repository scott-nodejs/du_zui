import 'package:duo_zui/Util/config_color.dart';
import 'package:flutter/material.dart';
import 'BaseModuleWidget.dart';
import 'package:duo_zui/model/model.dart';

Widget AppWidget(BuildContext context,App app){
  return Container(
    decoration: BoxDecoration(
        color: ConfigColor.colorContentBackground,
        border: BorderDirectional(
            bottom: BorderSide(color: ConfigColor.colorDivider, width: 0.5))),
    padding: EdgeInsets.only(top: 16.0),
    child: Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
              color: ConfigColor.colorWindowBackground,
              boxShadow: [
                new BoxShadow(color: Color(0x33000000), blurRadius: 4.0, offset: Offset(1.0, 1.0))
              ]
          ),
          margin: EdgeInsets.only(left: 16.0, bottom: 16.0),
          child: Image.network(app.url,
              fit: BoxFit.cover, width: 90.0, height: 90.0),
        ),
        Expanded(
          child: Container(
            height: 100.0,
            margin: EdgeInsets.only(left: 12.0, bottom: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    app.name,
                    maxLines: 2,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0, color: ConfigColor.colorText1),
                  ),
                ),
                Container(
                  child: Text(
                    app.company,
                    style: TextStyle(
                        fontSize: 14.0, color: ConfigColor.colorText2),
                  ),
                ),
                Container(
                  child: Text(
                    "评分: ${app.score}",
                    style: TextStyle(
                        fontSize: 12.0, color: ConfigColor.colorText3),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 28.0,
          width: 72.0,
          margin: EdgeInsets.only(right: 16.0, left: 16.0, bottom: 16.0),
          decoration: BoxDecoration(
              color: Color(0xFFf0f7ff),
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          child: Center(child: Text(
            "推文 ${app.articleCount} 篇",
            textAlign: TextAlign.center,
            style: TextStyle( fontWeight: FontWeight.bold, fontSize: 15.0, color: ConfigColor.colorPrimary),
          ),),
        )
      ],
    ),
  );
}