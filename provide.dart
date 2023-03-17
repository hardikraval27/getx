import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class provider extends StatefulWidget {
  const provider({Key? key}) : super(key: key);

  @override
  State<provider> createState() => _providerState();
}

class _providerState extends State<provider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
        child: ChangeNotifierProvider(create: (context) => Myprovider(),
          child: Consumer<Myprovider>(builder: (context, value, child) {
          return Center(
            child: Column(
              children: [IconButton(onPressed: () {

                 value.Myincrement();

            }, icon: Icon(Icons.add)),Text("${value.i}")],),
          );
          },),)),);
  }
}
class Myprovider extends ChangeNotifier {

  int i = 0;

  Myincrement() {
    i++;
    notifyListeners();
  }

}
