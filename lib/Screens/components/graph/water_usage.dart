import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WaterUsageGraph extends StatefulWidget {
  const WaterUsageGraph({Key? key}) : super(key: key);

  @override
  _WaterUsageGraphState createState() => _WaterUsageGraphState();
}

class _WaterUsageGraphState extends State<WaterUsageGraph> {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        tooltipBehavior: TooltipBehavior(enable: true),
        onTooltipRender: (TooltipArgs args) => tool(args),
        zoomPanBehavior: ZoomPanBehavior(enableSelectionZooming: true),
        palette: [
          const Color.fromRGBO(150, 218, 233, 100),
          Colors.pink,
        ],
        title: ChartTitle(
          text: ('MY chart area'),
        ),
        series: <ChartSeries>[
          AreaSeries<WaterUsageData, double>(
            borderColor: Colors.red,
            dataSource: waterUsage,
            xValueMapper: (WaterUsageData usagedata, _) => usagedata.x,
            yValueMapper: (WaterUsageData usagedata, _) => usagedata.y,
          )
        ]);
  }

  void tool(TooltipArgs args) {
    args.locationX = 30;
  }
}

class WaterUsageData {
  WaterUsageData(this.x, this.y);
  final double x;
  final double y;
}

List<WaterUsageData> waterUsage = [
  WaterUsageData(1, 200),
  WaterUsageData(2, 100),
  WaterUsageData(3, 150),
  WaterUsageData(4, 130),
  WaterUsageData(5, 110),
  WaterUsageData(6, 120),
  WaterUsageData(7, 200),
  WaterUsageData(8, 250),
  WaterUsageData(9, 150),
  WaterUsageData(10, 100),
  WaterUsageData(11, 130),
  WaterUsageData(12, 150),
];
