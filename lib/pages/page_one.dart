import 'package:flutter/cupertino.dart';

class PageOne extends StatelessWidget {
  final int index;
  final int pageNumber;

  const PageOne({super.key, required this.index, required this.pageNumber});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Page $pageNumber of tab $index'),
      ),
      child: Center(
        child: CupertinoButton(
          child: const Text('Next page'),
          onPressed: () {
            Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return PageOne(index: index, pageNumber: pageNumber+1,);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}