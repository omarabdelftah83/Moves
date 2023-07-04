import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
//import 'package:movies_app_flutter/utils/constants.dart';

class CustomSearchAppbarContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.1),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: TextField(
              style: TextStyle(color: Colors.white.withOpacity(0.3)),
              decoration: InputDecoration(
                  hintText: 'search',
                  hintStyle: TextStyle(color: Colors.white.withOpacity(0.5))),
            )),
            SizedBox(
              width: 200,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white.withOpacity(0.5),
                ))
          ],
        ),
      ),
    );
  }
}
