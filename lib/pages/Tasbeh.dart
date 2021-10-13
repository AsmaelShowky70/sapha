import 'package:flutter/material.dart';
import 'package:project5/pages/Zacer.dart';

class TasapehPage extends StatefulWidget {
  @override
  _TasapehPageState createState() => _TasapehPageState();
}

class _TasapehPageState extends State<TasapehPage> {
//الجزء الثالث الدوال التسبيح
//---------------------------------
  int _counter = 0;

  void _IncrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _ResetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //الجزء الاول وهو وضع العناصر الاساسيه
    //------------------------------------

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/img/BGG.gif'),
              fit: BoxFit.cover //لضبط ابعاد الخلفيه
              ),
        ),

        //الجزء الثاني وهو وضع العناصر في الشاشه
        //--------------------------------------

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$_counter',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                ),
              ),
              Text(
                'عدد التسابيح',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),

      // الجزء الثالث وضع الازرار الثلاثه(ذكر-تسبح-تصفير)
      //-----------------------------------------------

      floatingActionButton: Stack(
        //لوضع اكثر من زر معا
        children: [
          Padding(
            padding: EdgeInsets.only(left: 31.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              /*لتحديد موضع الزر */
              child: FloatingActionButton.extended(
                heroTag: null,
                onPressed: () {
                  _ResetCounter();
                },
                label: Text(
                  'تصفير',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
                icon: Icon(
                  Icons.settings_backup_restore,
                  color: Colors.black38,
                ),
                backgroundColor: Colors.white,
              ),
            ),
          ),
          //button2
          Align(
            alignment: Alignment(0.1, 0.7),
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                _IncrementCounter();
              },
              label: Text(
                'تسبيح',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              icon: Icon(
                Icons.fingerprint,
                color: Colors.black38,
              ),
              backgroundColor: Colors.white,
            ),
          ),
          //button3
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                //لتنقل لصفه التاليه
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Zaceer()));
              },
              label: Text(
                'ذكر',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
              ),
              icon: Icon(
                Icons.book,
                color: Colors.black38,
              ),
              backgroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
