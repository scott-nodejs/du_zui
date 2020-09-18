import 'package:dio/dio.dart';
import 'package:duo_zui/Util/config_color.dart';
import 'package:duo_zui/model/model.dart';
import 'package:duo_zui/page/webpage.dart';
import 'package:duo_zui/widget/AppWidget.dart';
import 'package:flutter/material.dart';

class AppListWidget extends StatefulWidget {

  String url;
  AppListWidget({Key key, @required this.url}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _XiaocePageState();
  }
}

class _XiaocePageState extends State<AppListWidget>  with AutomaticKeepAliveClientMixin {

  @override
  bool get wantKeepAlive => true;

  List<App> items = List<App>();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    url = widget.url;
    _onRefresh();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print("loadMore");
        _getMoreData();
      }
    });
    super.initState();
  }

  dynamic lastKey = 1;
  String url;

  Future<List<App>> fetchPost() async {
    Dio dio = new Dio();
    var list = List<App>();
    Response response = await dio.get("$url");
    Reslut reslut = Reslut.fromJson(response.data);
    if(!reslut.response.hasMore){
      return list;//如果没有数据就不继续了
    }
    lastKey = reslut.response.lastKey;//更新lastkey
    list.addAll(reslut.response.apps);
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
          onRefresh: _onRefresh,
          child: ListView.builder(
            itemCount: items.length <= 0 ? 0 : items.length + 1,
            itemBuilder: (context, index) {
              if (index == items.length) {
                return _buildProgressIndicator();
              } else {
                final item = items[index];
                return getItemView(item);
              }
            },
            controller: _scrollController,
          ),
    );
  }

  Widget _buildProgressIndicator() {
    return Container(
        margin: EdgeInsets.all(16.0),
        child: Center(
          child: SizedBox(
            child: CircularProgressIndicator(
              strokeWidth: 2.0,
            ),
            height: 20.0,
            width: 20.0,
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  Widget getItemView(App app) {
    Widget widget = AppWidget(context, app);
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => WebPage(url: 'http://www.appshuo.club/app-desc/46')));
      },
      child: widget,
    );
  }

  Future<Null> _onRefresh() async {
    await fetchPost().then((list) {
      setState(() {
        items.clear();
        items.addAll(list);
        return null;
      });
    });
  }

  Future<Null> _getMoreData() async {
    await fetchPost().then((list) {
      setState(() {
        items.addAll(list);
        return null;
      });
    });
  }
}