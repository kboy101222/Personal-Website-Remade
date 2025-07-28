import 'package:jaspr/jaspr.dart';

import '../components/counter.dart';

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
    if (kIsWeb) {
      print("Hello client");
      // When using @client components there is no default `main()` function on the client where you would normally
      // run any client-side initialization logic. Instead you can put it here, considering this component is only
      // mounted once at the root of your client-side component tree.
    } else {
      print("Hello server");
    }
  }

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      h1([Text("Kyle George")]),
      h2([Text("About Me")]),
      p([
        text(
            "Hello, my name is Kyle George. I am a developer specializing in web application development")
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
        li([Text("This website!")]),
        li([Text("TODO: Add more stuff")])
      ])
    ]);
  }
}
