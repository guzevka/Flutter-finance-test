import 'package:flutter/material.dart';
import 'page_3.dart';

class Page2 extends StatefulWidget {
  final int count;

  Page2({required this.count});

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
                  'Вопрос 2',
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
                  'Что значит «купить кота в мешке»?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                  title: Text(
                    'сделать нужную покупку',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'сделать нужную покупку',
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
                    'купить неизвестно что',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'купить неизвестно что',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      if (selectedAnswer == 'купить неизвестно что') {
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
                    'сделать незапланированную покупку',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'сделать незапланированную покупку',
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
                    'купить домашнее животное',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'купить домашнее животное',
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
                                builder: (context) => Page3(
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
