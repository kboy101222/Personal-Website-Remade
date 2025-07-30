import 'package:jaspr/jaspr.dart';

class CustomIcon extends StatelessComponent {
  const CustomIcon(this.iconName, {super.key, int iconSize = 24});

  final String iconName;
  final int iconSize = 24;

  @override
  Iterable<Component> build(BuildContext context) sync* {
    String? iconData;
    if (iconList.containsKey(iconName)) {
      iconData = iconList[iconName];
    } else {
      throw FormatException("$iconName isn't in the icon list");
    }
    yield svg(
        attributes: {
          "xmlns": "http://www.w3.org/2000/svg",
          "fill": "none",
          "stroke": "currentColor"
        },
        classes: "h-5 w-5 m-1",
        viewBox: "0 0 $iconSize $iconSize",
        [
          path(
              attributes: {
                'stroke-linecap': 'round',
                'stroke-linejoin': 'round'
              },
              d: iconData,
              [])
        ]);
  }
}

var iconList = {
  'bars-3': "M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5",
  'moon':
      'M21.752 15.002A9.72 9.72 0 0 1 18 15.75c-5.385 0-9.75-4.365-9.75-9.75 0-1.33.266-2.597.748-3.752A9.753 9.753 0 0 0 3 11.25C3 16.635 7.365 21 12.75 21a9.753 9.753 0 0 0 9.002-5.998Z',
  'sun':
      'M12 3v2.25m6.364.386-1.591 1.591M21 12h-2.25m-.386 6.364-1.591-1.591M12 18.75V21m-4.773-4.227-1.591 1.591M5.25 12H3m4.227-4.773L5.636 5.636M15.75 12a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0Z',
};
