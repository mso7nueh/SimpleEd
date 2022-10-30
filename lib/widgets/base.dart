import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class BaseWidget extends StatefulWidget {
  Widget child;

  BaseWidget({Key? key, required this.child}) : super(key: key);

  @override
  State<BaseWidget> createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData.light(),
      dark: ThemeData.dark(),
      initial: AdaptiveThemeMode.system,
      builder: (light, dark) => MaterialApp(
        theme: light,
        darkTheme: dark,
        debugShowCheckedModeBanner: false,
        home: widget.child,
      ),
    );
  }
}
