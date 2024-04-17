import 'package:flutter/material.dart';
import 'page_2.dart'; 

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int count = 0; 
  String selectedAnswer = ''; 
  bool canProceed =
      false; 

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
                  'Вопрос 1',
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
                  'Что больше стоит: три арбуза или две дыни?',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight
                          .bold), 
                ),
                Table(
                  columnWidths: {
                    0: FixedColumnWidth(
                        200), 
                    1: FixedColumnWidth(
                        200), 
                  },
                  border: TableBorder.all(), 
                  children: [
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/watermelon.png',
                                    width: 50,
                                    height: 50), 
                                SizedBox(
                                    width:
                                        8), 
                                Text(
                                  'Арбуз',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        TableCell(
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Image.asset('assets/melon.png',
                                    width: 50,
                                    height: 50), 
                                SizedBox(
                                    width:
                                        8), 
                                Text(
                                  'Дыня',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        TableCell(
                          child: Center(
                              child: Text(
                            '3 рубля',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                        ),
                        TableCell(
                          child: Center(
                              child: Text(
                            '5 рублей',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
                RadioListTile(
                  title: Text(
                    'две дыни',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'две дыни',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      if (selectedAnswer == 'две дыни') {
                        count++; 
                        canProceed =
                            true; 
                      }
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    'три арбуза',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'три арбуза',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      canProceed =
                          true; 
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    'стоят одинаково',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'стоят одинаково',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      canProceed =
                          true; 
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    'определить невозможно',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  value: 'определить невозможно',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      canProceed =
                          true;
                    });
                  },
                ),
                ElevatedButton(
                  onPressed: canProceed
                      ? () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Page2(
                                    count:
                                        count)), 
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
