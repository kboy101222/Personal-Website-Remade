// The entrypoint for the **server** environment.
//
// The [main] method will only be executed on the server during pre-rendering.
// To run code on the client, use the @client annotation.

// Server-specific jaspr import.
import 'package:jaspr/server.dart';

// Imports the [App] component.
import 'app.dart';

// This file is generated automatically by Jaspr, do not remove or edit.
import 'jaspr_options.dart';

void main() {
  // Initializes the server environment with the generated default options.
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  // Starts the app.
  //
  // [Document] renders the root document structure (<html>, <head> and <body>)
  // with the provided parameters and components.
  runApp(Document(
    // base: 'Personal-Website-Remade',
    title: 'personal_site_remade',
    styles: [
      // Special import rule to include to another css file.
      css.import('https://fonts.googleapis.com/css?family=Roboto'),
      // Each style rule takes a valid css selector and a set of styles.
      // Styles are defined using type-safe css bindings and can be freely chained and nested.
      css('html, body').styles(
        margin: Margin.fromLTRB(
            Unit.pixels(10), Unit.pixels(0), Unit.pixels(10), Unit.pixels(0)),
        fontFamily: const FontFamily.list(
            [FontFamily('Roboto'), FontFamilies.sansSerif]),
      ),
    ],
    head: [link(href: "./styles.css", rel: "stylesheet")],
    body: App(),
  ));
}
