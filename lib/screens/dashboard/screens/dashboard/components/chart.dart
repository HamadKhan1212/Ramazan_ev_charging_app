import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Cart extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Monday', 12),
      _ChartData('Tuesday', 15),
      _ChartData('Wednesday', 30),
      _ChartData('Thursday', 6.4),
      _ChartData('Friday', 14),
      _ChartData('Saturday', 14),
      _ChartData('Sunday', 14)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 5),
        tooltipBehavior: _tooltip,
        series: <ChartSeries<_ChartData, String>>[
          ColumnSeries<_ChartData, String>(
              dataSource: data,
              xValueMapper: (_ChartData data, _) => data.x,
              yValueMapper: (_ChartData data, _) => data.y,
              name: 'Day',
              color: Color.fromRGBO(8, 142, 255, 1))
        ]);
  }
}

class _ChartData {
  _ChartData(this.x, this.y);
  final String x;
  final double y;
}
