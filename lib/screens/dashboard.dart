import 'package:feedtheneed/screens/donationpoint.dart';

import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Refresh the screen every time it is displayed
    setState(() {});
  }
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   setState;
  //   super.initState();
  // }

  // void setstate() {
  //   setState(() {});
  // }

  final double _opacity = 1;
  Map<String, double> dataMap = {
    "Food Items": 18.47,
    "Clothes": 17.70,
    "Technology": 4.25,
    "Cosmetics": 3.51,
  };

  List<Color> colorList = [
    Colors.red,
    const Color(0xff3EE094),
    const Color(0xFF41A2CD),
    const Color.fromARGB(255, 182, 53, 226),
  ];
  List<Color> gradientColors = [
    const Color(0xFF41A2CD),
    const Color(0xFF41A2CD),
  ];

  bool showAvg = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.transparent,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.asset('assets/images/logo.png'),
                  ),
                ),
              ),
              const Text(
                "Total Donation",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Rs. 658",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              PieChart(
                dataMap: dataMap,
                colorList: colorList,
                chartRadius: MediaQuery.of(context).size.width / 1.9,
                centerText: "Donation Status",
                ringStrokeWidth: 24,
                degreeOptions: const DegreeOptions(),
                animationDuration: const Duration(seconds: 2),
                chartValuesOptions: const ChartValuesOptions(
                    showChartValues: true,
                    showChartValuesOutside: false,
                    showChartValuesInPercentage: true,
                    showChartValueBackground: true),
                legendOptions: const LegendOptions(
                    showLegends: true,
                    legendShape: BoxShape.rectangle,
                    legendTextStyle: TextStyle(fontSize: 11),
                    legendPosition: LegendPosition.bottom,
                    showLegendsInRow: true),
                chartType: ChartType.ring,
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0, right: 28),
                child: Container(
                  alignment: Alignment.center,
                  height: 135,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF41A2CD),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.transparent,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        radius: 27,
                        backgroundImage: AssetImage("assets/images/logo.png"),
                      ),
                    ),
                    title: const Text(
                      "Our Top Donners",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 21,
                      ),
                    ),
                    subtitle: const Text(
                      "See Here",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DonationPoint()));
                        //action coe when button is pressed
                      },
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
