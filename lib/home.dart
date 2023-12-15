// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Consumer<ColorProvider>(
//           builder: (context, value, child) => Container(
//             height: 300,
//             width: 300,
//             decoration:
//                 BoxDecoration(color: value.Color.elementAt(value.theme)),
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Provider.of<ColorProvider>(context, listen: false).change();
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

// class ColorProvider extends ChangeNotifier {
//   int theme = 0;
//   List Color = [
//     Colors.green,
//     Colors.blue,
//     Colors.red,
//     Colors.pink,
//     Colors.purple,
//     Colors.amber
//   ];
//   void change() {
//     theme = (theme + 1) % Color.length;
//     notifyListeners();
//   }
// }

// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<ColorProvider>(
          builder: (context, value, child) => Container(
            height: 300,
            width: 300,
            decoration:
                BoxDecoration(color: value.colors.elementAt(value.theme)),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<ColorProvider>(context, listen: false).change();
        },
        backgroundColor: Colors.purple,
        child: Icon(Icons.change_circle),
        tooltip: "change",
      ),
      backgroundColor: Colors.lightGreen,
    );
  }
}

class ColorProvider extends ChangeNotifier {
  int theme = 0;
  List colors = [
    Colors.white,
    Colors.green,
    Colors.amber,
    Colors.blue,
    Colors.red,
    Colors.orange
  ];
  void change() {
    theme = (theme + 1) % colors.length;
    notifyListeners();
  }
}
