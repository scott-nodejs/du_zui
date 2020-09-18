import 'package:duo_zui/widget/AppImageRight.dart';
import 'package:flutter/material.dart';
import 'package:duo_zui/model/model.dart';
import 'package:duo_zui/widget/NewsListWidget.dart';
import 'package:duo_zui/widget/ListImageTop.dart';
import 'package:duo_zui/widget/ActivityWidget.dart';
import 'package:duo_zui/widget/ListImageRight.dart';
import 'package:duo_zui/curiosityWebView.dart';
import 'package:dio/dio.dart';
import 'package:duo_zui/widget/ColumnsListWidget.dart';

///http://app3.qdaily.com/app3/columns/index/8/0.json  横向列表图片卡片
///http://app3.qdaily.com/app3/columns/index/59/0.json 横向书本图片列表
class WidgetUtils {
  static pushToCuriosityWebView(BuildContext context,int id)async{
    Dio dio = new Dio();
    Response response = await dio.get(
        "http://www.appshuo.club/api/client/api/artile/detail/${id}");
    String htmlBody = Reslut.fromJson(response.data).response.article.body;
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => CuriosityWebView(htmlBody: htmlBody),
    )
    );
  }
  static Widget GetListItemWidget(BuildContext context, dynamic data) {
    Widget widget;
    if(data.runtimeType == Feed) {
      if (data.indexType != null) {
        widget = NewsListWidget(context, data);
      } else if (data.type == 2) {
        widget = ListImageTop(context, data);
      } else if (data.type == 0) {
        widget = ActivityWidget(context, data);
      } else if (data.type == 1) {
        widget = ListImageRight(context, data);
      }else if (data.type == 3){
        widget = AppImageRight(context, data);
      }
    }else{
      widget = ColumnsListWidget(id: data['id'],showType: data['showType'],);
    }
    return GestureDetector(
      onTap: (){
        WidgetUtils.pushToCuriosityWebView(context, data.post.id);
      },
      child: widget,
    );
  }
}

