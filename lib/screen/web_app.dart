import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

/// Uri.parse에 주소를 넣으면 되는건지 어떻게 알게 되는 건지?? 페이지를 로딩하는 함수
/// const 와 final의 차이? : 둘은 값을 한 번 지정하게 되면 바꿀 수 없다는 공통적인 속성을 가지고있다.
/// 하지만 '생성시점' 이 다르다.
/// const는 기존에 메모리에 올라가있던 인스턴스를 매번 재사용한다. 일정시점에 garbage collection에 의해 지워지는데, 빈번한 생성은 메모리 효율을
/// 저하시킬 수 있다. const를 통한 재사용은 이러한 사용하지 않은 인스턴스가 메모리에 남게되는 메모리 낭비를 효율적으로 관리할 수 있다.
/// final은 선언 시, 값을 부여하지 않고 최초1번 값을 부여할 수 있다.
/// 즉, final은 컴파일 후에 결정되는 변수에서 사용하고, const는 컴파일 이전에 결정되는 변수에서 사용된다.
final homeUrl = Uri.parse('https://blog.codefactory.ai');

class web_app extends StatelessWidget {
  WebViewController controller = WebViewController()
  ..loadRequest(homeUrl);

  /// final test2 = WebViewController()..loadRequest();
  ///
  /// final controller2 = webViewController();
  /// controller2.loadRequest();

  web_app({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Code Factory'),
        centerTitle: true,
        /// web view 를 통해서, 이동한 다음, 홈 화면으로 되돌아갈 때 사용하는 버튼 생성
        actions: [
          IconButton(
              onPressed: (){
                controller.loadRequest(homeUrl);
              }, /// 눌렀을 때 실행되는 함수 정의 (콜백함수)
              icon: Icon(
                  Icons.home, /// flutter에 기본 내장된 아이콘 사용하기
              ),)
        ],
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
