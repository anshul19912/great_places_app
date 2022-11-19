import 'package:flutter/material.dart';
import 'package:great_places_app/providers/great_paces.dart';
import 'package:great_places_app/screens/add_place_screen.dart';
import 'package:great_places_app/screens/places_list_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
      child: MaterialApp(
        title: 'Greate Places',
        theme: ThemeData(primarySwatch: Colors.indigo, accentColor: Colors.amber),
        home: PlaceListScreen(),
        routes:{
          '/addplacescreen': (ctx)=> AddPlaceScreen(),
        }
      ),
    );
  }
}
