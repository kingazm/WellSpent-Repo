import 'package:flutter/material.dart';
import 'package:hackyeah1/LoginPage.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(const MyApp());
}

//WAZNE ZMIENNE
int _coins = 1440;
String name = "Dear User"; //imie usera tbd
Color balanceColor = Color(0xFF77D85C); //UI info component

//WAZNE

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WellSpent - Wellness is a currency',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFFEBC232)),
        useMaterial3: true,
      ),
      //home: const MyHomePage(title: 'Get Well - HealthCoin'),
      home: const LoginPage(),
    );
  }
}

class SpendingCoinsView extends StatefulWidget {
  const SpendingCoinsView({super.key});

  @override
  State<SpendingCoinsView> createState() => _SpendingCoinsView();
}

class _SpendingCoinsView extends State<SpendingCoinsView> {
  void _decrementHealthCoin(int amount) {
    //if (_coins >= 100) {
    setState(() {
      _coins += amount;
      if (_coins < 0) {
        _coins -= amount;
      }
    });
    //}
  }

  void changeBalanceColor() {
    setState(() {
      if (_coins > 1000) {
        balanceColor = Color(0xFF77D85C);
      } else if (_coins < 1000 && _coins > 500) {
        balanceColor = Color(0xFFEBC232);
      } else if (_coins <= 500) {
        balanceColor = Color(0xFFEA4335);
      }
    });
  }

  void updateUI(int amount) {
    _decrementHealthCoin(amount);
    //changeBalanceColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: balanceColor,
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(
              top: 50.0, bottom: 50.0, left: 40.0, right: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, $name',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height / 30),
              Text(
                'Total balance',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height / 50),
              Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 25.0,
                      //backgroundImage:
                      //AssetImage('assets/images/background.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 40,
                  ),
                  Text('$_coins', style: TextStyle(fontSize: 50.0)),
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height / 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      //spend coins
                      //temp
                      updateUI(-100); //w domysle stressed at work
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(160.0, 90.0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.work,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(width: 20.0),
                        const Text(
                          'Work',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      updateUI(-100);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(160.0, 90.0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.school,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(width: 20.0),
                        const Text(
                          'Studies',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      //spend coins
                      updateUI(100);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(160.0, 90.0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.family_restroom,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(width: 20.0),
                        const Text(
                          'Family',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      updateUI(100);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(160.0, 90.0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.people,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(width: 20.0),
                        const Text(
                          'Friends',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      //spend coins
                      updateUI(200);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(160.0, 90.0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(width: 20.0),
                        const Text(
                          'Me',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(160.0, 90.0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.more,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(width: 20.0),
                        const Text(
                          'Other', //Custom amount of points, TBA:
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //Navigation Bar section start
              SizedBox(height: MediaQuery.sizeOf(context).height / 3 - 140),
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        child:
                            Icon(Icons.home, size: 50.0, color: Colors.black),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyHomePage(
                                      title: '',
                                    )),
                          );
                        },
                      ),
                      SizedBox(width: 40.0),
                      Icon(Icons.workspace_premium, size: 50.0),
                      SizedBox(width: 40.0),
                      Icon(Icons.history, size: 50.0),
                    ],
                  ),
                ),
              ),
              //Navigation Bar section end
            ],
          ),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double evaluatePercent(int currentCoins) {
    //responsible for showing progress in spending/earning HealthCoins on the progress bar; if exceeds 1440 (100%) the progress bar is filled in 100% and the number above says the number of HealthCoin on the user's account [this is so that the percent property of the bar does not exceed 1.0 which causes error]
    if (currentCoins > 1440) {
      return 1.0;
    }

    return (currentCoins / 1440);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: balanceColor,
        height: double.infinity,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(
              top: 50.0, bottom: 50.0, left: 40.0, right: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, $name',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height / 30),
              Text(
                'Total balance',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height / 50),
              Row(
                children: [
                  Container(
                    child: CircleAvatar(
                      radius: 25.0,
                      //backgroundImage:
                      //AssetImage('assets/images/background.jpg'),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width / 40,
                  ),
                  Text('$_coins', style: TextStyle(fontSize: 50.0)),
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height / 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SpendingCoinsView()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(160.0, 90.0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.shop,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(width: 20.0),
                        const Text(
                          'Spend\ndaily\ncoins',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10.0),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      fixedSize: Size(160.0, 90.0),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        SizedBox(width: 20.0),
                        const Text(
                          'Get\ndeserved\naward',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height / 10),
              Column(
                children: [
                  Row(
                    children: [
                      Text('Daily coins'),
                      SizedBox(width: MediaQuery.sizeOf(context).width / 2.3),
                      Text('$_coins/1440')
                    ],
                  ),
                  SizedBox(height: 15.0),
                  new LinearPercentIndicator(
                    width: MediaQuery.sizeOf(context).width / 1.4,
                    lineHeight: 14.0,
                    //percent: 0.5,
                    //percent: (_coins / 1440),
                    percent: evaluatePercent(_coins),
                    backgroundColor: Colors.black,
                    progressColor: Colors.white,
                    barRadius: Radius.circular(10.0),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              Column(
                children: [
                  Row(
                    children: [
                      Text('Your level: 1'), //level earning functionality TBA
                      SizedBox(width: MediaQuery.sizeOf(context).width / 2.3),
                      Text('1/100')
                    ],
                  ),
                  SizedBox(height: 15.0),
                  new LinearPercentIndicator(
                    width: MediaQuery.sizeOf(context).width / 1.4,
                    lineHeight: 14.0,
                    percent: 0.01,
                    backgroundColor: Colors.black,
                    progressColor: Colors.white,
                    barRadius: Radius.circular(10.0),
                  ),
                ],
              ),

              //Navigation Bar section
              SizedBox(height: MediaQuery.sizeOf(context).height / 3 - 140),
              Container(
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        child:
                            Icon(Icons.home, size: 50.0, color: Colors.black),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyHomePage(
                                      title: '',
                                    )),
                          );
                        },
                      ),
                      SizedBox(width: 40.0),
                      TextButton(
                        child: Icon(Icons.workspace_premium,
                            size: 50.0, color: Colors.black),
                        onPressed: () {},
                      ),
                      SizedBox(width: 40.0),
                      Icon(Icons.history, size: 50.0),
                    ],
                  ),
                ),
              ),
              //End of Navigation Bar section
            ],
          ),
        ),
      ),
    );
  }
}
