import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../db/hive.dart';
import '../../modules/setting/model/setting.model.dart';
import 'dark/dark.theme.dart';
import 'light/light.theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'
    show StateProvider, WidgetRef;


const fontFamily = 'Nunito';

const Color white = Colors.white;
const Color black = Colors.black;
// const Color kPrimaryColor = Color(0xFF23336A);

final roundedButtonStyle = ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: borderRadius15));

final borderRadius10 = BorderRadius.circular(10);
final borderRadius12 = BorderRadius.circular(12);
final borderRadius15 = BorderRadius.circular(15);
final borderRadius30 = BorderRadius.circular(30);

final roundedRectangleBorder10 = RoundedRectangleBorder(borderRadius: borderRadius10);
final roundedRectangleBorder12 = RoundedRectangleBorder(borderRadius: borderRadius12);
final roundedRectangleBorder15 = RoundedRectangleBorder(borderRadius: borderRadius15);
final roundedRectangleBorder30 = RoundedRectangleBorder(borderRadius: borderRadius30);



Themes? get themeType => Boxes.configs
    .get('data', defaultValue: Configs(theme: Themes.light))!
    .theme;

SystemUiOverlayStyle get uiConfig =>
    themeType == Themes.light ? lightUiConfig : darkUiConfig;

final themeConfigProvider = StateProvider<Themes>((ref) {
  return Boxes.configs
      .get('data', defaultValue: Configs(theme: Themes.light))!
      .theme!;
});

Future<void> toggleTheme(WidgetRef ref) async {
  final theme = themeType;
  final newTheme = theme == Themes.light ? Themes.dark : Themes.light;
  await Boxes.configs.put('data', Configs(theme: newTheme));
  ref.read(themeConfigProvider.notifier).update((_) => newTheme);
}


