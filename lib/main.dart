import 'package:flutter/material.dart';
import 'package:flutter_bootcamp/pages/home.dart';
import 'package:flutter_bootcamp/pages/loading.dart';
import 'package:flutter_bootcamp/pages/choose_location.dart';
import 'package:flutter_bootcamp/pages/new_location.dart';

void main () =>runApp(MaterialApp(
  initialRoute: '/home',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
    '/newlocation': (conext) => NewLocation()
  },

));




