import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
            child: SfCartesianChart(
                    primaryXAxis: const CategoryAxis(),
                    series: <CartesianSeries>[
                      LineSeries<SalesData, String>(
                        dataSource: <SalesData>[
                          SalesData('Jan', 1123),
                          SalesData('Feb', 989),
                          SalesData('Mar', 1005),
                          SalesData('Apr', 1540),
                          SalesData('May', 1110),
                        ],
                        xValueMapper: (SalesData sales, _) => sales.month,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        dataLabelSettings: const DataLabelSettings(isVisible: true)
                      )
                    ],
                  ),
        );
  }
}

class SalesData {
  SalesData(this.month, this.sales);
  final String month;
  final double sales;
}
