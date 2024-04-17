import 'package:flutter/material.dart';
import 'page_4.dart';

class Page3 extends StatefulWidget {
  final int count;

  Page3({required this.count});

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  String selectedAnswer = '';
  bool canProceed = false;
  int updatedCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/mon1.png', width: 20, height: 20),
                Text(
                  'Вопрос 3',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset('assets/mon1.png', width: 20, height: 20),
              ],
            ),
          ),
          backgroundColor: Colors.lightBlue,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg_1.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'У Маши есть 10 рублей. Она купила шоколадку за 5 рублей и сок за 3 рубля. Сколько сдачи получит Маша?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                  title: Text(
                    '1 рубль',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: '1 рубль',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      canProceed = true;
                      updatedCount = widget.count;
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    '2 рубля',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: '2 рубля',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      if (selectedAnswer == '2 рубля') {
                        canProceed = true;
                        updatedCount = widget.count + 1;
                      } else {
                        updatedCount = widget.count;
                      }
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    '3 рубля',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: '3 рубля',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      canProceed = true;
                      updatedCount = widget.count;
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    '4 рубля',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: '4 рубля',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      canProceed = true;
                      updatedCount = widget.count;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: canProceed
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Page4(count: updatedCount)),
                          );
                        }
                      : null,
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                  ),
                  child: Text('Перейти к следующему вопросу'),
                ),
              ],
            ),
          ),
        ));
  }
}
