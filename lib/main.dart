import 'package:flutter/material.dart';
import 'package:pawa_pet_adoption/di/di.dart';

import 'core/app/my_app.dart';

void main() async {
  await init();
  runApp(const MyApp());
}
