import 'package:flutter/material.dart';
import '../../cart_screen/view/screens/cart_screen.dart';
import '../../categories_screen/view/screens/categories_screen.dart';
import '../../home_screen/view/screens/home_screen.dart';
import '../../profile_screen/view/screens/profile_screen.dart';
import '../../search_screen/view/screens/search_screen.dart';

List<Widget> screens = [
  const Home(),
  const Categories(),
  const Cart(),
  const Search(),
  const Profile()
];
