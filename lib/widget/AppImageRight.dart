import 'package:flutter/material.dart';
import 'BaseModuleWidget.dart';
import 'package:duo_zui/model/model.dart';


Widget AppImageRight(BuildContext context,Feed feed){
  return Column(
    children: <Widget>[
      Container(
        height: 50,
        child: ActivityTitleWidget(context, feed.post.user.photo, feed.post.user.nickname),
      ),
      Container(
        child: Row(
            children: <Widget>[
                Container(
                   width: MediaQuery.of(context).size.width-120,
                   height: 120,
                   margin: EdgeInsets.all(0),
                   child: Column(
                       children: <Widget>[
                            Container(
                               child: TitleLabel(context, feed.post.title),
                               //height: 90,
                               padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
                               alignment: Alignment.topLeft,
                            ),
                            Expanded(
                               child: Container(
                                   padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                                   alignment: Alignment.topLeft,
                                   child: DescriptionLabel(context, feed.post.description == null ? '' : feed.post.description)
                               ),
                            )
                       ],
                   ),
                ),
                Expanded(
                   child:  Container(
                      margin: EdgeInsets.only(left: 0),
                      // width: 120,
                      // height: 120,
                      alignment: Alignment.topCenter,
                      child: Image.network(feed.image,width: 120,height: 120,),
                   ),
                ),
          ],
      ),
      ),
      Container(
        child: ListBottomWidget(context, feed.post),
        margin: EdgeInsets.fromLTRB(15, 0, 0, 13),
      )
    ],
  );
}

Widget ActivityTitleWidget(BuildContext context,String iconString,String title){
  return Row(
    children: <Widget>[
      Container(
        margin: EdgeInsets.fromLTRB(12, 2, 10, 0 ),
        child: CircleAvatar(
          backgroundImage: NetworkImage(iconString),
          radius: 10,
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0, 2, 10, 0 ),
        child: TitleLabel(context, title),
      ),
      Expanded(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 1, 10, 0),
          alignment: Alignment.centerRight,
          child: Image.asset('toolbarShare.png',width: 18,height: 18,),
        ),
      )
    ],
  );
}