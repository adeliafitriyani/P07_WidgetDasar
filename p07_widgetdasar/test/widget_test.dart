// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:p07_widgetdasar/main.dart';

void main() {
  testWidgets('profile displays photo and supplied biodata', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Evaluasi: Profil dan Biodata'), findsOneWidget);
    expect(find.text('Adelia Fitriyani'), findsOneWidget);
    expect(find.text('Informasi Pribadi'), findsOneWidget);
    expect(find.text('Bengkalis, 07 Mei 1990'), findsOneWidget);
    expect(find.text('adelia@polbeng.ac.id'), findsOneWidget);
    expect(find.text('085272070033'), findsOneWidget);
    expect(find.text('Traveling'), findsOneWidget);

    final profilePicture = tester.widget<Image>(
      find.byKey(const Key('profile-picture')),
    );
    expect(
      (profilePicture.image as AssetImage).assetName,
      'images/fotoadelia.png',
    );
  });
}
