import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.deepOrangeAccent,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepOrangeAccent),
          borderRadius: BorderRadius.circular(30.0),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 16.0),
        hintText: 'Search for Food or Restaurants',
        hintStyle: TextStyle(
          color: Colors.grey[500],
        ),
        prefixIcon: Icon(
          Icons.search,
          size: 20.0,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            Icons.close,
          ),
          iconSize: 20.0,
          onPressed: () {
            // this will close the keyboard
            FocusScope.of(context).unfocus();
          },
        ),
        fillColor: Colors.white30,
        filled: true,
      ),
    );
  }
}