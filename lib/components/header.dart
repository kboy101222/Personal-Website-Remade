import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import '../constants/theme.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var activePath = context.url;

    // yield header([
    //   nav([
    //     for (var route in [
    //       (label: 'Home', path: ''),
    //       // (label: 'About', path: 'about'),
    //     ])
    //       div(classes: activePath == route.path ? 'active' : null, [
    //         Link(to: route.path, child: text(route.label)),
    //       ]),
    //   ]),
    // ]);

    var routes = [
      (label: 'Home', path: ''),
      (label: 'About', path: 'about'),
    ];

    yield div(classes: "fixed navbar bg-base-100 shadow-sm", [
      div(classes: "navbar-start", [
        div(classes: "dropdown", [
          div(
              attributes: {"tabindex": "0", "role": "button"},
              classes: "btn btn-ghost lg:hidden",
              [
                svg(
                    attributes: {
                      "xmlns": "http://www.w3.org/2000/svg",
                      "fill": "none",
                      "stroke": "currentColor"
                    },
                    classes: "h-5 w-5",
                    viewBox: "0 0 24 24",
                    [
                      path(
                          attributes: {
                            "stroke-linecap": "round",
                            "stroke-linejoin": "round",
                            "stroke-width": "2"
                          },
                          d: "M4 6h16M4 12h8m-8 6h16",
                          [])
                    ])
              ]),
          ul(
              classes:
                  "menu menu-sm dropdown-content bg-base-100 rounded-box z-1 mt-3 w-52 p-2 shadow",
              attributes: {
                "tabindex": "0"
              },
              [
                for (var route in routes)
                  li([Link(to: route.path, child: text(route.label))])
              ])
        ])
      ]),
      div(classes: "navbar-center hidden lg:flex", [
        ul(classes: "menu menu-horizontal px-1", [
          for (var route in routes)
            li(
                classes: activePath == route.path ? 'underline' : null,
                [Link(to: route.path, child: text(route.label))])
        ])
      ])
    ]);
  }

  @css
  static List<StyleRule> get styles => [
        css('header', [
          css('&').styles(
            display: Display.flex,
            padding: Padding.all(1.em),
            justifyContent: JustifyContent.center,
          ),
          css('nav', [
            css('&').styles(
              display: Display.flex,
              height: 3.em,
              radius: BorderRadius.all(Radius.circular(10.px)),
              overflow: Overflow.clip,
              justifyContent: JustifyContent.spaceBetween,
              backgroundColor: primaryColor,
            ),
            css('a', [
              css('&').styles(
                display: Display.flex,
                height: 100.percent,
                padding: Padding.symmetric(horizontal: 2.em),
                alignItems: AlignItems.center,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                textDecoration:
                    const TextDecoration(line: TextDecorationLine.none),
              ),
              css('&:hover').styles(
                backgroundColor: const Color('#0005'),
              ),
            ]),
            css('div.active', [
              css('&').styles(position: const Position.relative()),
              css('&::before').styles(
                content: '',
                display: Display.block,
                position: Position.absolute(
                    bottom: 0.5.em, left: 20.px, right: 20.px),
                height: 2.px,
                radius: BorderRadius.circular(1.px),
                backgroundColor: Colors.white,
              ),
            ])
          ]),
        ]),
      ];
}
