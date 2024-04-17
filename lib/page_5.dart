import 'package:flutter/material.dart';
import 'page_6.dart'; 

class Page5 extends StatefulWidget {
  final int count;

  Page5({required this.count});

  @override
  _Page5State createState() => _Page5State();
}

class _Page5State extends State<Page5> {
  String selectedAnswer = ''; 
  bool canProceed =
      false; 
  int updatedCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/mon1.png',
                    width: 20, height: 20), 
                Text(
                  'Вопрос 5',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.asset('assets/mon1.png',
                    width: 20, height: 20), 
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
                  'Помоги Матроскину разобраться в вопросах семейного дохода.  Отметь, что является семейным доходом Дяди Федора, Шарика и Матроскина.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                  title: Text(
                    'Деньги, которые Шарик дал в долг Печкину.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'Деньги, которые Шарик дал в долг Печкину.',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      canProceed =
                          true; 
                      updatedCount = widget
                          .count; 
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    'Деньги, полученные Матроскиным от продажи молока.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'Деньги, полученные Матроскиным от продажи молока.',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      if (selectedAnswer ==
                          'Деньги, полученные Матроскиным от продажи молока.') {
                        canProceed =
                            true; 
                        updatedCount = widget.count +
                            1; 
                      } else {
                        updatedCount = widget
                            .count; 
                      }
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    'Деньги, которые Матроскин потратил на покупку сена для коровы.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value:
                      'Деньги, которые Матроскин потратил на покупку сена для коровы.',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      canProceed =
                          true; 
                      updatedCount = widget
                          .count; 
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    'Все ответы верны.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'Все ответы верны.',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      canProceed =
                          true; 
                      updatedCount = widget
                          .count; 
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: canProceed
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Page6(
                                    count:
                                        updatedCount)), 
                          );
                        }
                      : null,
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.green), 
                  ),
                  child: Text('Перейти к следующему вопросу'),
                ),
              ],
            ),
          ),
        ));
  }
}
