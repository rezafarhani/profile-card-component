import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: App(), debugShowCheckedModeBanner: false));
}

class App extends StatefulWidget {
  App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      child: Center(
        child: Container(
          width: w / 1.3,
          height: h / 2.3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: w,
                    height: h / 4.6,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage(
                              "images/bg-card.png",
                            ),
                            fit: BoxFit.fitWidth)),
                  ),
                  Positioned(
                      top: 60,
                      child: Center(
                          child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(1000),
                          image: DecorationImage(
                              image: AssetImage("images/char.png")),
                          border: Border.all(
                            color: Color.fromARGB(255, 255, 255, 255),
                            width: 4,
                          ),
                        ),
                      )))
                ],
              ),
              SizedBox(height: h / 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Reza Farhani',
                    style: TextStyle(
                        fontSize: w * 0.06, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: w / 33,
                  ),
                  Text(
                    '15',
                    style: TextStyle(
                        color: Color.fromARGB(255, 138, 138, 138),
                        fontSize: w * 0.06,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
              SizedBox(height: h / 70),
              Text(
                "Abadan",
                style: TextStyle(
                  color: Color.fromARGB(255, 138, 138, 138),
                  fontSize: w * 0.04,
                ),
              ),
              SizedBox(height: h / 70),
              Divider(
                height: 8,
                color: Color.fromARGB(103, 184, 184, 184),
              ),
              SizedBox(height: h / 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        "80K",
                        style: TextStyle(
                            color: Color.fromARGB(255, 70, 70, 70),
                            fontSize: w * 0.06,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "followers",
                        style: TextStyle(
                            color: Color.fromARGB(255, 70, 70, 70),
                            fontSize: w * 0.035,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(width: w / 10),
                  Column(
                    children: [
                      Text(
                        "803K",
                        style: TextStyle(
                            color: Color.fromARGB(255, 70, 70, 70),
                            fontSize: w * 0.06,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Likes",
                        style: TextStyle(
                            color: Color.fromARGB(255, 70, 70, 70),
                            fontSize: w * 0.035,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  SizedBox(width: w / 10),
                  Column(
                    children: [
                      Text(
                        "1.4K",
                        style: TextStyle(
                            color: Color.fromARGB(255, 70, 70, 70),
                            fontSize: w * 0.06,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "posts",
                        style: TextStyle(
                            color: Color.fromARGB(255, 70, 70, 70),
                            fontSize: w * 0.035,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(15)),
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg.png"), fit: BoxFit.fill)),
    ));
  }
}
