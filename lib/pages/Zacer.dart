import 'package:flutter/material.dart';

class Zaceer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    // double screenWidth = mediaQuery.size.width;
    // double screenHigh = mediaQuery.size.height;
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        body: new Stack(
          children: [
            new Container(
              //خلفيه
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('lib/img/DKR.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: new Container(
                // width: screenWidth,
                // height: screenHigh,
                // height: 150,
                // width: 200,
                padding: const EdgeInsets.all(30.0),
                decoration: new BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: new BorderRadius.circular(9.0),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                    ),
                  ],
                  shape: BoxShape.rectangle,
                ),
                //text
                // child: new Align(
                //   heightFactor: 1.0,
                //   child: new Text(
                //     'فضل الذكر',
                //     textAlign: TextAlign.center,
                //     style: TextStyle(
                //         color: Colors.white,
                //         fontWeight: FontWeight.w400,
                //         fontFamily: 'Almaria'),
                //   ),
                // ),
              ),
            ),
            Center(
              child: new Container(
                // width: screenWidth,
                // height: screenHigh,
                // height: 500,
                // width: 200,
                padding: const EdgeInsets.all(15.0),
                decoration: new BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: new BorderRadius.circular(9.0),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                    ),
                  ],
                  shape: BoxShape.rectangle,
                ),
                //text
                child: new Align(
                  heightFactor: 1.0,
                  child: new Text(
                    ' قال تعالي :( فَاذْكُرُونِي أَذْكُرْكُمْ وَاشْكُرُواْ لِي وَلاَ تَكْفُرُونِ ) ( يَا أَيُّهَا الَّذِينَ آمَنُوا اذْكُرُوا اللَّهَ ذِكْراً كَثِيراً) ( وَالذَّاكِرِينَ اللَّهَ كَثِيراً وَالذَّاكِرَاتِ أَعَدَّ اللَّهُ لَهُم مَّغْفِرَةً وَأَجْراً عَظِيماً) ( وَاذْكُر رَّبَّكَ فِي نَفْسِكَ تَضَرُّعاً وَخِيفَةً وَدُونَ الْجَهْرِ مِنَ الْقَوْلِ بِالْغُدُوِّ وَالآصَالِ وَلاَ تَكُن مِّنَ الْغَافِلِينَ ) وقال صلى الله عليه وسلم :" مثل الذي يذكر ربه والذي لا يذكر ربه مثل الحي والميت "',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'Almaria'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
