import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:odc_orange_task/provider/provider.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var x_axis = 0.0, y_axis = 0.0, accelration = 0.0, speed = 0.0;

  bool enablePressure = true;
  bool enableLevel = true;

  void _updateLocation(PointerEvent details) {
    setState(() {
      x_axis = details.position.dx;
      y_axis = details.position.dy;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    final data = Provider.of<ChangeValueTo>(context, listen: false);
    data.changeValueTo.x_axis = x_axis;
    data.changeValueTo.y_axis = y_axis;
    data.changeValueTo.speed = speed;
    data.changeValueTo.Accesslration = accelration;
    return Scaffold(
        appBar: AppBar(elevation: 0),
        body: SafeArea(
            child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ///get the X-Axis
                Column(children: [
                  Expanded(
                    child: SfRadialGauge(
                        title: GaugeTitle(
                            text: 'X-Axis',
                            textStyle: const TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold)),
                        axes: <RadialAxis>[
                          RadialAxis(
                              minimum: 0,
                              maximum: 2000,
                              ranges: <GaugeRange>[
                                GaugeRange(
                                    startValue: 0,
                                    endValue: 500,
                                    color: Colors.black,
                                    startWidth: 10,
                                    endWidth: 10),
                                GaugeRange(
                                    startValue: 500,
                                    endValue: 1500,
                                    color: Colors.black,
                                    startWidth: 10,
                                    endWidth: 10),
                                GaugeRange(
                                    startValue: 1500,
                                    endValue: 2000,
                                    color: Colors.red,
                                    startWidth: 10,
                                    endWidth: 10)
                              ],
                              pointers: <GaugePointer>[
                                NeedlePointer(
                                    needleStartWidth: 2,
                                    needleEndWidth: 2,
                                    needleColor: Colors.red,
                                    needleLength: 0.8,
                                    value: x_axis,
                                    enableAnimation: true,
                                    animationType: AnimationType.bounceOut,
                                    animationDuration: 1500,
                                    knobStyle: KnobStyle(
                                        knobRadius: 5,
                                        sizeUnit: GaugeSizeUnit.logicalPixel,
                                        color: Colors.red))
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Container(
                                        child: Text('${x_axis}',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold))),
                                    angle: 90,
                                    positionFactor: 0.5)
                              ])
                        ]),
                  ),
                ]),
                ///get thy Y-Axis
                Column(children: [
                  Expanded(
                    child: SfRadialGauge(
                        title: GaugeTitle(
                            text: 'Y-AXIS',
                            textStyle: const TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold)),
                        axes: <RadialAxis>[
                          RadialAxis(
                              minimum: 0,
                              maximum: 2000,
                              ranges: <GaugeRange>[
                                GaugeRange(
                                    startValue: 0,
                                    endValue: 500,
                                    color: Colors.black,
                                    startWidth: 10,
                                    endWidth: 10),
                                GaugeRange(
                                    startValue: 500,
                                    endValue: 1500,
                                    color: Colors.black,
                                    startWidth: 10,
                                    endWidth: 10),
                                GaugeRange(
                                    startValue: 1500,
                                    endValue: 2000,
                                    color: Colors.red,
                                    startWidth: 10,
                                    endWidth: 10)
                              ],
                              pointers: <GaugePointer>[
                                NeedlePointer(
                                    needleStartWidth: 2,
                                    needleEndWidth: 2,
                                    needleColor: Colors.red,
                                    needleLength: 0.8,
                                    value: y_axis,
                                    enableAnimation: true,
                                    animationType: AnimationType.bounceOut,
                                    animationDuration: 1500,
                                    knobStyle: KnobStyle(
                                        knobRadius: 5,
                                        sizeUnit: GaugeSizeUnit.logicalPixel,
                                        color: Colors.red))
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Container(
                                        child: Text('${y_axis}',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold))),
                                    angle: 90,
                                    positionFactor: 0.5)
                              ])
                        ]),
                  ),
                ]),
                ///get the speed
                Column(children: [
                  Expanded(
                    child: SfRadialGauge(
                        title: GaugeTitle(
                            text: 'Speed',
                            textStyle: const TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold)),
                        axes: <RadialAxis>[
                          RadialAxis(
                              minimum: 0,
                              maximum: 2000,
                              ranges: <GaugeRange>[
                                GaugeRange(
                                    startValue: 0,
                                    endValue: 500,
                                    color: Colors.black,
                                    startWidth: 10,
                                    endWidth: 10),
                                GaugeRange(
                                    startValue: 500,
                                    endValue: 1500,
                                    color: Colors.black,
                                    startWidth: 10,
                                    endWidth: 10),
                                GaugeRange(
                                    startValue: 1500,
                                    endValue: 2000,
                                    color: Colors.red,
                                    startWidth: 10,
                                    endWidth: 10)
                              ],
                              pointers: <GaugePointer>[
                                NeedlePointer(
                                    needleStartWidth: 2,
                                    needleEndWidth: 2,
                                    needleColor: Colors.red,
                                    needleLength: 0.8,
                                    value: speed,
                                    enableAnimation: true,
                                    animationType: AnimationType.bounceOut,
                                    animationDuration: 1500,
                                    knobStyle: KnobStyle(
                                        knobRadius: 5,
                                        sizeUnit: GaugeSizeUnit.logicalPixel,
                                        color: Colors.red))
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Container(
                                        child: Text('${speed}',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold))),
                                    angle: 90,
                                    positionFactor: 0.5)
                              ])
                        ]),
                  ),
                ]),
                ///get the Acceleration
                Column(children: [
                  Expanded(
                    child: SfRadialGauge(
                        title: GaugeTitle(
                            text: 'Acceleration',
                            textStyle: const TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold)),
                        axes: <RadialAxis>[
                          RadialAxis(
                              minimum: 0,
                              maximum: 2000,
                              ranges: <GaugeRange>[
                                GaugeRange(
                                    startValue: 0,
                                    endValue: 500,
                                    color: Colors.black,
                                    startWidth: 10,
                                    endWidth: 10),
                                GaugeRange(
                                    startValue: 500,
                                    endValue: 1500,
                                    color: Colors.black,
                                    startWidth: 10,
                                    endWidth: 10),
                                GaugeRange(
                                    startValue: 1500,
                                    endValue: 2000,
                                    color: Colors.red,
                                    startWidth: 10,
                                    endWidth: 10)
                              ],
                              pointers: <GaugePointer>[
                                NeedlePointer(
                                    needleStartWidth: 2,
                                    needleEndWidth: 2,
                                    needleColor: Colors.red,
                                    needleLength: 0.8,
                                    value: accelration,
                                    enableAnimation: true,
                                    animationType: AnimationType.bounceOut,
                                    animationDuration: 1500,
                                    knobStyle: KnobStyle(
                                        knobRadius: 5,
                                        sizeUnit: GaugeSizeUnit.logicalPixel,
                                        color: Colors.red))
                              ],
                              annotations: <GaugeAnnotation>[
                                GaugeAnnotation(
                                    widget: Container(
                                        child: Text('${accelration}',
                                            style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold))),
                                    angle: 90,
                                    positionFactor: 0.5)
                              ])
                        ]),
                  ),
                ]),
              ],
            ),
            MouseRegion(
              onHover: _updateLocation,
            )
          ],
        )));
  }
}
