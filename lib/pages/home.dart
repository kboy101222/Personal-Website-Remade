// import 'package:jaspr/jaspr.dart';
import 'package:jaspr/ui.dart';

// By using the @client annotation this component will be automatically compiled to javascript and mounted
// on the client. Therefore:
// - this file and any imported file must be compilable for both server and client environments.
// - this component and any child components will be built once on the server during pre-rendering and then
//   again on the client during normal rendering.
@client
class Home extends StatefulComponent {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    // Run code depending on the rendering environment.
    // if (kIsWeb) {
    //   print("Hello client");
    //   // When using @client components there is no default `main()` function on the client where you would normally
    //   // run any client-side initialization logic. Instead you can put it here, considering this component is only
    //   // mounted once at the root of your client-side component tree.
    // } else {
    //   print("Hello server");
    // }
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section(classes: "prose", [
      h1([Text("Kyle George")]),
      h2([Text("About Me")]),
      p([
        text(
            "Hello, my name is Kyle George. I am a developer specializing in web application development and database design and management.")
      ]),
      h3([Text("Accolades")]),
      ul([
        li([
          Text("Association of Computing Machinery (ACM) President at APSU")
        ]),
        li([Text("Top 3 at VandyHacks 2022")]),
      ]),
      h3([Text("Projects")]),
      ul([
        li(classes: "link", [
          Link(
              url: Uri.parse(
                  "https://github.com/kboy101222/Personal-Website-Remade"),
              children: [text("This website (I'm a backend dev primarily)")])
        ]),
        li([
          Link(
              url: Uri.parse(
                  "https://github.com/kboy101222/initiative_tracker/tree/main"),
              children: [text("TTRPG Initiative Tracker")])
        ]),
        li([
          Link(
              url: Uri.parse("https://github.com/kboy101222/MTG-Token-Manager"),
              children: [text("MtG Token and Life Tracker")]),
          text(" | "),
          Link(
              url: Uri.parse("https://kboy101222.github.io/MTG-Token-Manager"),
              children: [text("(Working site)")])
        ]),
        li([
          Link(
              url: Uri.parse(
                  "https://github.com/kboy101222/TNT-Crawlspace-Worx"),
              children: [
                text(
                    "TNT Crawlspace Worx Website (repo private pending publishing)")
              ])
        ]),
        li([
          text(
              "Maintained a home media and data server for the last 2 years, including securing publically available pages behind SSL")
        ])
      ]),
      h3([text("Programming Languages")]),
      ul([
        li([text("HTML, CSS, JavaScript")]),
        ul([
          li([
            text(
                "Many of my websites and projects are written in pure HTML and JavaScript")
          ])
        ]),
        li([text("Java")]),
        li([
          text(
              "Dart (what this website and the TTRPG Initiative app were built in)")
        ]),
        li([text("Python")])
      ]),
      h3([text("Platforms, Libraries, & Software")]),
      ul([
        li([text("Flutter")]),
        li([text("Jaspr")]),
        li([text("Django")]),
        li([text("React.JS")]),
        li([text("Bootstrap")]),
        li([text("jQuery")]),
        li([text("PostgreSQL")]),
        li([text("MySQL")]),
        li([text("Visual Studio Code")]),
      ]),
      button(classes: "btn btn-primary", [text("Testing")])
    ]);
  }
}
