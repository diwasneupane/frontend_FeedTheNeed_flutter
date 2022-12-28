import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, double> data = {
    'Category 1': 35.0,
    'Category 2': 15.0,
    'Category 3': 10.0,
    'Category 4': 40.0,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PieChart(
          dataMap: data,
          animationDuration: const Duration(milliseconds: 800),
          chartLegendSpacing: 32.0,
          chartRadius: MediaQuery.of(context).size.width / 2.7,
          chartValuesOptions: ChartValuesOptions(
            showChartValuesInPercentage: true,
            showChartValues: true,
            showChartValuesOutside: false,
            chartValueBackgroundColor: Colors.grey[200],
          ),
          colorList: const [
            Colors.red,
            Colors.green,
            Colors.yellow,
            Colors.blue,
          ],
          legendOptions: const LegendOptions(
            showLegends: true,
            legendPosition: LegendPosition.right,
            // decimalPlaces: 1,
            // showChartValueLabel: true,
            // initialAngle: 0,
            // chartValueStyle: defaultChartValueStyle.copyWith(
            //   color: Colors.blueGrey[900]?.withOpacity(0.9),
            // ),
          ),
          chartType: ChartType.ring,
        ),
      ),
    );
  }
}
