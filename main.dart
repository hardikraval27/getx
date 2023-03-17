import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getex/provide.dart';

void main() {
  runApp(MaterialApp(
   // theme: ThemeData(primarySwatch: Colors.cyan),
    debugShowCheckedModeBanner: false,
    home: provider(),
  ));
}
class statemanagemwent extends StatelessWidget {
  demoget gg = Get.put(demoget());

  TextEditingController a1 = TextEditingController();
  TextEditingController a2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(10)),
                margin: EdgeInsets.all(15),
                child: TextField(
                  controller: a1,
                )),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(10)),
              margin: EdgeInsets.all(10),
              child: TextField(
                controller: a2,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          gg.sumoftwo(a1.text, a2.text);
                        },
                        child:Icon(Icons.add)
                        //Text("+")

                    ),
                  //  Obx(() => Text("sum: ${gg.sum.value}")),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          gg.minustwo(a1.text, a2.text);
                        },
                        child: Text("-",)),
                 //   Obx(() => Text("min: ${gg.minus.value}")),
                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          gg.multitwo(a1.text, a2.text);
                        },
                        child: Text("*")),
                 //  Obx(() => Text("multi: ${gg.multi.value}")),
                  ],
                ),
                Column(children: [ ElevatedButton(
                    onPressed: () {
                      gg.devidetwo(a1.text, a2.text);
                    },
                    child: Text("/")),],)

              ],
            ),
            Column(
              children: [
                Obx(() => Text("sum: ${gg.sum.value}")),
                Obx(() => Text("min: ${gg.minus.value}")),
                Obx(() => Text("multi: ${gg.multi.value}")),
                Obx(() => Text("devide: ${gg.divide.value}")),
              ],
            )
          ],
        ),
      ),
    );
  }

}

class demoget extends GetxController {

  //RxString anserr = "";
  RxString sum    = "".obs;
   RxString minus  = "".obs;
   RxString multi  = "".obs;
   RxString divide = "".obs;

  double a = 0;
  double b = 0;

  void sumoftwo(String a1, String a2) {
    if (a1.isNotEmpty) {
      a = double.parse(a1);
    } else {
      a = 0;
    }
    if (a2.isNotEmpty) {
      b = double.parse(a2);
    } else {
      b = 0;
    }

    double c = a + b;

    sum.value  = c.toString();

  }
  void minustwo(String a1, String a2) {

    if (a1.isNotEmpty) {
      a = double.parse(a1);
    } else {
      a = 0;
    }
    if (a2.isNotEmpty) {
      b = double.parse(a2);
    } else {
      b = 0;
    }

    double d = a - b;

    minus.value    = d.toString();

  }

  void multitwo(String a1, String a2) {

    if (a1.isNotEmpty) {
      a = double.parse(a1);
    } else {
      a = 0;
    }
    if (a2.isNotEmpty) {
      b = double.parse(a2);
    } else {
      b = 0;
    }

    double v = a * b;

    multi.value    = v.toString();

  }

  void devidetwo(String a1, String a2) {
    if (a1.isNotEmpty) {
      a = double.parse(a1);
    } else {
      a = 0;
    }
    if (a2.isNotEmpty) {
      b = double.parse(a2);
    } else {
      b = 0;
    }

    double l = a / b;

    divide.value    = l.toString();

  }

}
