import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// 위젯 생성하는 경우가 많아서, 단축키를 사용할 것, import 할 때는 lib 폴더 기준으로 import 할 것
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Container(
          color: Colors.black,
          width: MediaQuery.of(context).size.height, // 해당 컬럼이 전체 사이즈를 차지할 수 있도록
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible( // 많이 사용은 안함
                flex: 2, // 나머지 공간을 나눠먹는 비율
                child: Container(
                  color: Colors.red,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.orange,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.pink,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  width: 50.0,
                  height: 50.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
