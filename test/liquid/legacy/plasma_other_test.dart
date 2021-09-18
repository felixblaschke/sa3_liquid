import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sa3_liquid/sa3_liquid.dart';

void main() {
  test('plasma - offset 1', () {
    final compute = LegacyInternalPlasmaCompute(
        canvasSize: const Size(100, 100), value: 0, offset: 0, circleSize: 1.0);

    expect(compute.position(0), equals(const Offset(50.0, 50.0)));
  });

  test('plasma - offset 2', () {
    final compute = LegacyInternalPlasmaCompute(
        canvasSize: const Size(100, 100),
        value: 0,
        offset: 1.2,
        circleSize: 1.0);

    expect(compute.position(0).dx.toStringAsFixed(5), equals('96.60195'));
    expect(compute.position(0).dy.toStringAsFixed(5), equals('96.60195'));
  });

  test('plasma - radius 1', () {
    final compute = LegacyInternalPlasmaCompute(
        canvasSize: const Size(100, 100),
        value: 0,
        offset: 1.2,
        circleSize: 1.0);

    expect(compute.radius(), equals(33.0));
  });

  test('plasma - radius 2', () {
    final compute = LegacyInternalPlasmaCompute(
        canvasSize: const Size(100, 100),
        value: 0,
        offset: 1.2,
        circleSize: 2.0);

    expect(compute.radius(), equals(67.0));
  });
}
