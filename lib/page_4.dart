import 'package:flutter/material.dart';
import 'page_5.dart';

class Page4 extends StatefulWidget {
  final int count;

  Page4({required this.count});

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
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
                  'Вопрос 4',
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
                  'Какую сумму денег составляют монеты на рисунке?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Image.asset('assets/rubli.png'),
                RadioListTile(
                  title: Text(
                    '18 рублей 60 копеек',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: '18 рублей 60 копеек',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      if (selectedAnswer == '18 рублей 60 копеек') {
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
                    '13 рублей 55 копеек',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: '13 рублей 55 копеек',
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
                    '16 рублей 50 копеек',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: '16 рублей 50 копеек',
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
                    '22 рубля 50 копеек',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: '22 рубля 50 копеек',
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
                                    Page5(count: updatedCount)),
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
