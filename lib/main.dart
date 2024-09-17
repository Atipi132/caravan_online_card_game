import 'package:flutter/material.dart';

void main() {
  runApp(const MyTestApp());
}

class MyTestApp extends StatelessWidget {
  const MyTestApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Caravan : The online card game',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Caravan Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  String pressedButton = "";
  double _newGameIconButtonSize = 200.0; // Taille initiale de l'IconButton
  double _settingsIconButtonSize = 200.0;

  void onStartButtonPressed() {
    setState(() {
      pressedButton = "New game starting...";
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => const NewGamePage(title: "New Game Page")),
      );
    });
  }

  void onHover(bool isHovered, String icon) {
    setState(() {
      switch (icon) {
        case "newGame":
          _newGameIconButtonSize = isHovered ? 250.0 : 200.0; // Agrandir l'icône si la souris est dessus
          break;

        case "settings":
          _settingsIconButtonSize = isHovered ? 250.0 : 200.0;
          break;
        default:
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MouseRegion(
                  onEnter: (_) => onHover(true, "newGame"),
                  onExit: (_) => onHover(false, "newGame"),
                  child: AnimatedContainer(
                    duration: Durations.short3,
                    height: _newGameIconButtonSize,
                    width: _newGameIconButtonSize,
                    child: IconButton(
                      icon: Image.asset('assets/images/joker.jpeg'),
                      onPressed: onStartButtonPressed,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                    ),
                  ),
                ),
                Text(
                  pressedButton,
                ), 
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                MouseRegion(
                  onEnter: (_) => onHover(true, "settings"),
                  onExit: (_) => onHover(false, "settings"),
                  child: AnimatedContainer(
                    duration: Durations.short3,
                    height: _settingsIconButtonSize,
                    width: _settingsIconButtonSize,
                    child: IconButton(
                      icon: Image.asset('assets/images/joker.jpeg'),
                      onPressed: onStartButtonPressed,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                    ),
                  ),
                ),
                Text(
                  pressedButton,
                ), 
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NewGamePage extends StatefulWidget {
  const NewGamePage({super.key, required this.title});

  final String title;

  @override
  State<NewGamePage> createState() => NewGamePageState();
}

class NewGamePageState extends State<NewGamePage> {
  String pressedButton = "";
  final _isHovered = <bool>[ false, false, false, false, false, false, false]; 

  void onStartButtonPressed() {
    setState(() {
      Navigator.pop(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child : Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  height: 250,
                  width: 150,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      AnimatedPositioned(
                        duration: Durations.short3,
                        height: 200,
                        bottom: _isHovered[0] ? 50 : 0,
                        child : MouseRegion(
                          onEnter: (_) { setState(() { _isHovered[0] = true; }); },
                          onExit: (_) { setState(() { _isHovered[0] = false; }); },
                          child: IconButton(
                            icon: Image.asset('assets/images/joker.jpeg'),
                            onPressed: onStartButtonPressed,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: 150,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      AnimatedPositioned(
                        duration: Durations.short3,
                        height: 200,
                        bottom: _isHovered[1] ? 50 : 0,
                        child : MouseRegion(
                          onEnter: (_) { setState(() { _isHovered[1] = true; }); },
                          onExit: (_) { setState(() { _isHovered[1] = false; }); },
                          child: IconButton(
                            icon: Image.asset('assets/images/joker.jpeg'),
                            onPressed: onStartButtonPressed,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: 150,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      AnimatedPositioned(
                        duration: Durations.short3,
                        height: 200,
                        bottom: _isHovered[2] ? 50 : 0,
                        child : MouseRegion(
                          onEnter: (_) { setState(() { _isHovered[2] = true; }); },
                          onExit: (_) { setState(() { _isHovered[2] = false; }); },
                          child: IconButton(
                            icon: Image.asset('assets/images/joker.jpeg'),
                            onPressed: onStartButtonPressed,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: 150,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      AnimatedPositioned(
                        duration: Durations.short3,
                        height: 200,
                        bottom: _isHovered[3] ? 50 : 0,
                        child : MouseRegion(
                          onEnter: (_) { setState(() { _isHovered[3] = true; }); },
                          onExit: (_) { setState(() { _isHovered[3] = false; }); },
                          child: IconButton(
                            icon: Image.asset('assets/images/joker.jpeg'),
                            onPressed: onStartButtonPressed,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: 150,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      AnimatedPositioned(
                        duration: Durations.short3,
                        height: 200,
                        bottom: _isHovered[4] ? 50 : 0,
                        child : MouseRegion(
                          onEnter: (_) { setState(() { _isHovered[4] = true; }); },
                          onExit: (_) { setState(() { _isHovered[4] = false; }); },
                          child: IconButton(
                            icon: Image.asset('assets/images/joker.jpeg'),
                            onPressed: onStartButtonPressed,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: 150,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      AnimatedPositioned(
                        duration: Durations.short3,
                        height: 200,
                        bottom: _isHovered[5] ? 50 : 0,
                        child : MouseRegion(
                          onEnter: (_) { setState(() { _isHovered[5] = true; }); },
                          onExit: (_) { setState(() { _isHovered[5] = false; }); },
                          child: IconButton(
                            icon: Image.asset('assets/images/joker.jpeg'),
                            onPressed: onStartButtonPressed,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 250,
                  width: 150,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      AnimatedPositioned(
                        duration: Durations.short3,
                        height: 200,
                        bottom: _isHovered[6] ? 50 : 0,
                        child : MouseRegion(
                          onEnter: (_) { setState(() { _isHovered[6] = true; }); },
                          onExit: (_) { setState(() { _isHovered[6] = false; }); },
                          child: IconButton(
                            icon: Image.asset('assets/images/joker.jpeg'),
                            onPressed: onStartButtonPressed,
                            highlightColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child : Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 200,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Image.asset('assets/images/bisonsteve.jpg', height: 150),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Image.asset('assets/images/bisonsteve.jpg', height: 150),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Image.asset('assets/images/bisonsteve.jpg', height: 150),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Image.asset('assets/images/bisonsteve.jpg', height: 150),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Image.asset('assets/images/bisonsteve.jpg', height: 150),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Image.asset('assets/images/bisonsteve.jpg', height: 150),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      Image.asset('assets/images/bisonsteve.jpg', height: 150),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
