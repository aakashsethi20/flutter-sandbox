import 'package:fitness/common/app_bar.dart';
import 'package:fitness/pages/page_one.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: FitnessAppBar(), 
      tabBuilder: (BuildContext context, int index){
        return CupertinoTabView(
          builder: (context) {
            return PageOne(index: index, pageNumber: 1);
          },
        );
      },
    );
  }
}
