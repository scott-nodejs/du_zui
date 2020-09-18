import 'package:duo_zui/AppListWidget.dart';
import 'package:flutter/material.dart';
import 'news.dart';
import 'widget/Drawer.dart';

class TabbedAppBarMain extends StatelessWidget {
  var titleList = ['好文推荐','APP精选'];
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: new DefaultTabController(
        length: titleList.length,
        child: new Scaffold(
            appBar: new AppBar(
                leading: Builder( //自定义抽屉图标
                    builder: (BuildContext context){
                      return InkWell(
                        child: Container(
                            padding: EdgeInsets.all(15),
                            child: ClipOval(
                              child: new Icon(Icons.account_circle),
                            )
                        ),
                        onTap: (){//打开抽屉
                          Scaffold.of(context).openDrawer();
                        },
                      );
                    }
                ),
              elevation: 0.0,//导航栏下面那根线
              title: Container(
                width: double.infinity,
                height: 40.0,
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(3.0))),
                child: Row(children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Colors.black38,
                    size: 20.0,
                  ),
                  Container(
                    child: Text(
                      "搜索",
                      style: TextStyle(color: Colors.black38, fontSize: 14.0),
                    ),
                    margin: EdgeInsets.only(left: 8.0),
                  )
                ]),
              ),
              centerTitle: true,
              bottom: new TabBar(
              isScrollable: false,//是否可滑动
              unselectedLabelColor: Colors.black26,//未选中按钮颜色
              labelColor: Colors.black,//选中按钮颜色
              labelStyle: TextStyle(fontSize: 18.0),//文字样式
              indicatorSize: TabBarIndicatorSize.label,//滑动的宽度是根据内容来适应,还是与整块那么大(label表示根据内容来适应)
                indicatorWeight: 4.0,//滑块高度
                indicatorColor: Colors.yellow,//滑动颜色
              indicatorPadding: EdgeInsets.only(bottom: 1.0),//与底部距离为1
              tabs: titleList.map((String text) {//tabs表示具体的内容,是一个数组
                return new Tab(
                  text: text,
                );
              }).toList(),
            ),
          ),
          drawer: MyDrawer(),
          //body表示具体展示的内容
          body:TabBarView(children: [News(url: 'http://www.appshuo.club/api/client/api/recommend/all?lastkey='),AppListWidget(url: 'http://www.appshuo.club/api/client/api/apps/all?lastkey=1')]) ,
        ),
      ),
    );
  }
}




void main() {
  runApp(new TabbedAppBarMain());
}