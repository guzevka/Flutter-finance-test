import 'package:flutter/material.dart';
import 'home_page.dart';

class Page11 extends StatefulWidget {
  final int count;

  Page11({required this.count});

  @override
  _Page11State createState() => _Page11State();
}

class _Page11State extends State<Page11> {
  @override
  Widget build(BuildContext context) {
    String message;
    if (widget.count >= 0 && widget.count <= 5) {
      message = 'Упс.. Неплохо, но хотелось бы лучше..';
    } else if (widget.count >= 6 && widget.count <= 8) {
      message = 'Ты большая умничка!';
    } else {
      message = 'Ура! Молодец!';
    }

    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/mon1.png',
                    width: 20, height: 20), 
                Text(
                  'Результат',
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
                  'Вы прошли тест на ${widget.count} из 10',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  message,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.white),
                    foregroundColor: MaterialStateProperty.all<Color>(
                        Colors.green), 
                  ),
                  child: Text('Вернуться на главную страницу'),
                ),
                Image.asset('assets/ok/deer.png',
                    width: 350, height: 350),
              ],
            ),
          ),
        ));
  }
}
