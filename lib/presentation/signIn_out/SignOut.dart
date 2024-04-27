
import 'package:flutter/material.dart';
import 'package:project_spotifyclone/core/colors.dart';
import 'package:project_spotifyclone/core/currentuser_detail.dart';
import 'package:project_spotifyclone/widgets/texts.dart';

import '../../core/size.dart';




// ignore: camel_case_types
class Dropdown_signout extends StatefulWidget {
  const Dropdown_signout({super.key});

  @override
  _Dropdown_signoutState createState() => _Dropdown_signoutState();
}

class _Dropdown_signoutState extends State<Dropdown_signout> {

  final List<String> _items = [
    'Option 1',
    'Sign Out',
    'Option 3',
    'Option 4', 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Example'),
      ),
      body: Center(
        child: DropdownButton<String>(
          //    value: _selectedItem,
          underline: h10,
          icon: CircleAvatar(
            radius: 15,
            backgroundColor: spotify_green,
            child: text(
              stringtext: CurrentUserData!.displayName![0],
            ),
          ),
          onChanged: (String? newValue) {
            if (newValue == 'Sign Out') {          
            
            }
          },
          items: _items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
      ),
    );
  }
}
