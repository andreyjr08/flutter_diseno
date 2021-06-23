import 'package:flutter/material.dart';
import 'package:ink_page_indicator/ink_page_indicator.dart';

// ignore_for_file: public_member_api_docs

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Page Indicators',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home();
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final ValueNotifier<double> page = ValueNotifier(0.0);
  PageIndicatorController controller = PageIndicatorController();

  IndicatorShape shape = IndicatorShape(width: 0, height: 0);
  IndicatorShape activeShape = IndicatorShape(height: 0, width: 0);

  @override
  void initState() {
    super.initState();
    controller = PageIndicatorController()
      ..addListener(() {
        page.value = controller.page!;
      });
  }

  List<Widget> _createChildren(int count) {
    final List<Widget> result = [];
    for (var i = 0; i < count; i++) {
      result.add(const SizedBox.expand());
    }
    return result;
  }

  Widget buildInkPageIndicator(InkStyle style) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: InkPageIndicator(
              gap: 32,
              padding: 16,
              shape: shape,
              page: page,
              pageCount: 5,
              activeShape: activeShape,
              inactiveColor: Colors.grey.shade500,
              activeColor: Colors.grey.shade700,
              inkColor: Colors.grey.shade400,
              style: style,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final children = _createChildren(5);

    shape = IndicatorShape.circle(10);
    activeShape = IndicatorShape.circle(10);

    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            buildInkPageIndicator(InkStyle.simple),
          ],
        ),
        InkWell(
          onTap: () => controller.animateToPage(
            controller.page != children.length - 1 ? children.length - 1 : 0,
            duration: const Duration(milliseconds: 800),
            curve: Curves.ease,
          ),
          child: PageView(
            controller: controller,
            children: children,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
