import 'package:flutter/material.dart';
import 'page_11.dart'; 

class Page10 extends StatefulWidget {
  final int count;

  Page10({required this.count});

  @override
  _Page10State createState() => _Page10State();
}

class _Page10State extends State<Page10> {
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
                  'Вопрос 10',
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
                  'В какой сказке продемонстрирована эффективность коллективного человеческого труда?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                  title: Text(
                    '«Репка»',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: '«Репка»',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      if (selectedAnswer == '«Репка»') {
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
                    '«Рукавичка»',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: '«Рукавичка»',
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
                    '«Колобок»',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: '«Колобок»',
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
                    '«Заюшкина избушка»',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: '«Заюшкина избушка»',
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
                                builder: (context) => Page11(
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
