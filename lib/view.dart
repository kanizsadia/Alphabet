import 'package:flutter/material.dart';
import 'package:flutter_application_1/utls/alphabet.dart';

import 'utls/color.dart';

class ViewPage extends StatelessWidget {
   ViewPage({ Key? key }) : super(key: key);
 List<Color> color = ColorManager.colors;
 List<String> alphabet = Alphabet.alphabet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Alphabet")),),
      body: SingleChildScrollView(
        child: Wrap(
          spacing: 8,
          runSpacing: 8,
          alignment: WrapAlignment.center,
          children: [
            
            for (var i = 1; i < Alphabet.alphabet.length; i++)
            Container(
              height: 80,
              width: 80,
            color: color[i % color.length ] ,
              child: Center(
                child: Text(alphabet[i],
                style: TextStyle(
                  fontSize: 24,
                  
                ),
                ),
              ),
              
            )
          ],),
      ),
    );
  }
}