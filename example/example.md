```dart
import 'package:flutter/material.dart';
import 'package:sa3_liquid/sa3_liquid.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              tileMode: TileMode.mirror,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xfff44336),
                Color(0xff2196f3),
              ],
              stops: [
                0,
                1,
              ],
            ),
            backgroundBlendMode: BlendMode.srcOver,
          ),
          child: const PlasmaRenderer(
            type: PlasmaType.bubbles,
            particles: 27,
            color: Color(0x44ffffff),
            blur: 0.16,
            size: 0.51,
            speed: 1.35,
            offset: 0,
            blendMode: BlendMode.screen,
            particleType: ParticleType.atlas,
            variation1: 0.31,
            variation2: 0.3,
            variation3: 0.13,
            rotation: 1.05,
          ),
        )),
      ),
    );
  }
}

```
