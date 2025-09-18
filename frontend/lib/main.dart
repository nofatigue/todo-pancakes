import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
  var favorites = <WordPair>[];

  
  void getNext() {
    current = WordPair.random();
    notifyListeners();
  }

  void toggleFavorite() {
    if (favorites.contains(current)) {
      favorites.remove(current);
    } else {
      favorites.add(current);
    }

    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair = appState.current;

    IconData likeButtonIcon;
    if (appState.favorites.contains(appState.current)) {
      likeButtonIcon = Icons.favorite;
    }
    else {
      likeButtonIcon = Icons.favorite_border;
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          NameCard(pair: pair),
          SizedBox(height: 10,),
          ButtonPanel(appState: appState, likeButtonIcon: likeButtonIcon)
          ],
        ),
      ),
    );
  }
}

class ButtonPanel extends StatelessWidget {
  const ButtonPanel({
    super.key,
    required this.appState,
    required this.likeButtonIcon,
  });

  final MyAppState appState;
  final IconData likeButtonIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton.icon(label: Text("Like"), onPressed: appState.toggleFavorite, icon: Icon(likeButtonIcon),),
        SizedBox(width: 20),
        ElevatedButton(onPressed: appState.getNext, child: Text('Next')),
      ],
    );
  }
}

class NameCard extends StatelessWidget {
  const NameCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    
    return Card(
      color: theme.colorScheme.secondary,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(pair.asLowerCase, style:theme.textTheme.displayMedium!.copyWith(color: theme.colorScheme.onPrimary)),
      ),
    );
  }
}
