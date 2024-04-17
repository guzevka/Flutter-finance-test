import 'package:flutter/material.dart';
import 'page_10.dart'; 

class Page9 extends StatefulWidget {
  final int count;

  Page9({required this.count});

  @override
  _Page9State createState() => _Page9State();
}

class _Page9State extends State<Page9> {
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
                  'Вопрос 9',
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
                  'Укажи название сказки, в которой героиня расходует найденные деньги.',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                RadioListTile(
                  title: Row(
                    children: <Widget>[
                      Image.asset('assets/muha.png',
                          width: 50, height: 50), 
                      SizedBox(
                          width:
                              8), 
                      Text(
                        '«Муха-Цокотуха»',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  value: '«Муха-Цокотуха»',
                  groupValue: selectedAnswer,
                  onChanged: (value) {
                    setState(() {
                      selectedAnswer = value.toString();
                      if (selectedAnswer == '«Муха-Цокотуха»') {
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
                  title: Row(
                    children: <Widget>[
                      Image.asset('assets/kura.png', width: 50, height: 50),
                      SizedBox(width: 8),
                      Text(
                        '«Петушок и бобовое зернышко»',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  value: '«Петушок и бобовое зернышко»',
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
                  title: Row(
                    children: <Widget>[
                      Image.asset('assets/gusik.png', width: 50, height: 50),
                      SizedBox(width: 8),
                      Text(
                        '«Гуси-лебеди»',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  value: '«Гуси-лебеди»',
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
                  title: Row(
                    children: <Widget>[
                      Image.asset('assets/princessa.png',
                          width: 50, height: 50),
                      SizedBox(width: 8),
                      Text(
                        '«Золушка»',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  value: '«Золушка»',
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
                                builder: (context) => Page10(
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
