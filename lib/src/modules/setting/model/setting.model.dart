// ignore: depend_on_referenced_packages
import 'package:hive/hive.dart';

import '../../../db/hive.dart';

part 'setting.model.g.dart';

@HiveType(typeId: HiveTypes.configs)
class Configs extends HiveObject {
  @HiveField(0, defaultValue: true)
  bool? isFirstLaunch;
  @HiveField(1, defaultValue: Themes.light)
  Themes? theme;
  @HiveField(2, defaultValue: Locales.english)
  Locales? locale;

  Configs({
    this.isFirstLaunch,
    this.theme,
    this.locale,
  });
}

@HiveType(typeId: HiveTypes.themes)
enum Themes {
  @HiveField(0)
  light,
  @HiveField(1)
  dark,
}

@HiveType(typeId: HiveTypes.locales)
enum Locales {
  @HiveField(0)
  english,
  @HiveField(1)
  bengali,
}
