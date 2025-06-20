import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class IconsRegistry {
  static IconsRegistry? _instance;

  IconsRegistry._();
  static IconsRegistry get i => _instance ??= IconsRegistry._();

  static final Map<String, IconData> iconMap = {
    'arrowUDownLeft': PhosphorIcons.arrowUDownLeft(),
    'arrowUpRight': PhosphorIcons.arrowUpRight(),
    'article': PhosphorIcons.article(),
    'barCode': PhosphorIcons.barcode(),
    'barricade': PhosphorIcons.barricade(),
    'books': PhosphorIcons.books(),
    'broom': PhosphorIcons.broom(),
    'calendarBlank': PhosphorIcons.calendarBlank(),
    'cards': PhosphorIcons.cards(),
    'caretDown': PhosphorIcons.caretDown(),
    'caretLeft': PhosphorIcons.caretLeft(),
    'caretRight': PhosphorIcons.caretRight(),
    'caretUp': PhosphorIcons.caretUp(),
    'cashRegister': PhosphorIcons.cashRegister(),
    'chartBar': PhosphorIcons.chartBar(),
    'chartLineUp': PhosphorIcons.chartLineUp(),
    'chatTeardrop': PhosphorIcons.chatTeardrop(),
    'clipboard': PhosphorIcons.clipboard(),
    'coins': PhosphorIcons.coins(),
    'currencyCircleDolar': PhosphorIcons.currencyCircleDollar(),
    'currencyDolar': PhosphorIcons.currencyDollar(),
    'equals': PhosphorIcons.equals(),
    'eye': PhosphorIcons.eye(),
    'eyeClosed': PhosphorIcons.eyeClosed(),
    'file': PhosphorIcons.file(),
    'fileText': PhosphorIcons.fileText(),
    'fingerprint': PhosphorIcons.fingerprint(),
    'gear': PhosphorIcons.gear(),
    'heartBeat': PhosphorIcons.heartbeat(),
    'house': PhosphorIcons.house(),
    'lightBulb': PhosphorIcons.lightbulb(),
    'link': PhosphorIcons.link(),
    'listBullets': PhosphorIcons.listBullets(),
    'lock': PhosphorIcons.lock(),
    'magnifyingGlass': PhosphorIcons.magnifyingGlass(),
    'minus': PhosphorIcons.minus(),
    'moon': PhosphorIcons.moon(),
    'newspaperClipping': PhosphorIcons.newspaperClipping(),
    'puzzlePiece': PhosphorIcons.puzzlePiece(),
    'package': PhosphorIcons.package(),
    'plus': PhosphorIcons.plus(),
    'question': PhosphorIcons.question(),
    'shareNetwork': PhosphorIcons.shareNetwork(),
    'scan': PhosphorIcons.scan(),
    'signOut': PhosphorIcons.signOut(),
    'scroll': PhosphorIcons.scroll(),
    'spinner': PhosphorIcons.spinner(),
    'sun': PhosphorIcons.sun(),
    'swap': PhosphorIcons.swap(),
    'trendDown': PhosphorIcons.trendDown(),
    'trendUp': PhosphorIcons.trendUp(),
    'users': PhosphorIcons.users(),
    'wallet': PhosphorIcons.wallet(),
    'warning': PhosphorIcons.warning(),
    'x': PhosphorIcons.x(),
  };

  IconData getIconByName(String iconName) {
    return iconMap[iconName] ?? Icons.error;
  }

  IconData getIconById(int iconId) {
    return iconMap[iconId] ?? Icons.error;
  }
}

extension IconsExtension on BuildContext {
  IconsRegistry get icons => IconsRegistry.i;
}
