import 'package:flutter/material.dart';
import 'package:giuakybai1/stacked_page_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Demo Home Page', key: UniqueKey()), // Thêm key vào đây
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({required Key key, required this.title}) : super(key: key);
  final String title;
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //
  late PageController pageController;
  // Some RGB bling
  final List<Color> colors = <Color>[
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.purpleAccent,
    Colors.orange
  ];
  //
  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: PageView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          controller: pageController,
          itemBuilder: (context, index) {
            // Wrap the ` StackedPageView` inside the inside the ` PageView.builder `
            return StackPageView(
              controller: pageController,
              index: index,
              child: Container(
                color: (colors..shuffle()).first,
                child: Center(
                  // child: Text(
                  //   '$index',
                  //   style: const TextStyle(
                  //     color: Colors.white,
                  //     fontSize: 25,
                  //   ),
                  // ),




                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/image/itme.jpg',
                        // width: 150,
                        // height: 150,
                      ),
                      //const SizedBox(height: 10),
                      Text(
                        '$index',
                        style: const TextStyle(
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),



                ),
              ),
            );
          },
        ));
  }
}


