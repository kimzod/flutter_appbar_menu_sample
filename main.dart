import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Market'),
        centerTitle: true,
        elevation: 0.0,
        // actions : 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: (){
              print('shopping button is clicked!!');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){
              print('search button is clicked!!');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              // 현재 계정
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/kjh_trans.png'),
                backgroundColor: Colors.white,
              ),
              // 다른 계정
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/kjh_2.jpg'),
                  backgroundColor: Colors.white,
                ),
              ],

              accountName: Text('zodlab'),
              accountEmail: Text('arottinghalo@naver.com'),
              onDetailsPressed: (){
                print('clicked!!');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.grey[800],),
              title: Text('Home'),
              onTap: (){
                print('Home clicked!!');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.grey[800],),
              title: Text('Setting'),
              onTap: (){
                print('Setting clicked!!');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(Icons.question_answer, color: Colors.grey[800],),
              title: Text('Q&A'),
              onTap: (){
                print('Q&A clicked!!');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

