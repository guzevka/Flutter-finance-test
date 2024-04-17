import 'package:flutter/material.dart';
import 'page_7.dart'; 

class Page6 extends StatefulWidget {
  final int count;

  Page6({required this.count});

  @override
  _Page6State createState() => _Page6State();
}

class _Page6State extends State<Page6> {
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
                  'Что означает, когда о человеке говорят: «Он и на снеге зимой экономит»?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                  title: Text(
                    'Человек очень экономно использует снег в хозяйстве',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'Человек очень экономно использует снег в хозяйстве',
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
                    'Очень скупой человек',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'Очень скупой человек',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      if (selectedAnswer == 'Очень скупой человек') {
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
                    'Расточительный человек',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'Расточительный человек',
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
                    'Человек охраняет снег',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'Человек охраняет снег',
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
                                builder: (context) => Page7(
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
