import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeNavigator extends StatefulWidget{
  const HomeNavigator({super.key});

  @override
  State<StatefulWidget> createState() => _HomeNavigator();
}

class _HomeNavigator extends State<HomeNavigator>{
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text("Home", style: optionStyle,),
    Text("Likes", style: optionStyle,),
    Text("Search", style: optionStyle,),
    Text("Profile", style: optionStyle,),
  ];

  void _onChangeTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: _widgetOptions.elementAt(_selectedIndex),
     ),
     bottomNavigationBar: Container(
       decoration: BoxDecoration(
         color: Colors.black38,
         boxShadow: [
           BoxShadow(
             blurRadius: 20,
             color: Colors.black.withOpacity(.1)
           )
         ]
       ),
       child: SafeArea(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
           child: GNav(
             rippleColor: Colors.deepOrangeAccent!,
             hoverColor: Colors.deepOrangeAccent[100]!,
             gap: 8,
             activeColor: Colors.white,
             iconSize: 24,
             padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
             duration: const Duration(milliseconds: 400),
             tabBackgroundColor: Colors.deepOrangeAccent!,
             color: Colors.white,
             tabs: const [
               GButton(icon: Icons.home, text: 'Home',),
               GButton(icon: Icons.add_circle_outline, text: 'Likes',),
               GButton(icon: Icons.search, text: 'Search',),
               GButton(icon: Icons.account_circle, text: 'Profile',),
             ],
             selectedIndex: _selectedIndex,
             onTabChange: _onChangeTapped,
           ),
         ),
       ),
     ),
   );
  }
}