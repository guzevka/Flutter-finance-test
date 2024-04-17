import 'package:flutter/material.dart';
import 'page_9.dart'; 

class Page8 extends StatefulWidget {
  final int count;

  Page8({required this.count});

  @override
  _Page8State createState() => _Page8State();
}

class _Page8State extends State<Page8> {
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
                  'Вопрос 8',
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
                  'Правильным ведением бюджета семьи считается то, при котором доходы… ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                  title: Text(
                    'Больше расходов',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'Больше расходов',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      if (selectedAnswer == 'Больше расходов') {
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
                    'Равны расходам',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'Равны расходам',
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
                    'Меньше расходов',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'Меньше расходов',
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
                    'Не зависят от расходов',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'Не зависят от расходов',
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
                                builder: (context) => Page9(
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
