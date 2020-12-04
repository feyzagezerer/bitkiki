import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  //Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore <= 45 && resultScore >= 30) {
      resultText = 'yelken çiçeği!';
    } else if (resultScore <= 25 && resultScore >= 0) {
      resultText = 'afrika menekşesi!';
    } else if (resultScore <= -1) {
      resultText = 'paşa kılıcı!';
    } else {
      resultText = 'aloe vera!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Size en uygun bitki: ',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //

          //Text
          FlatButton(
            child: Text(
              'Tekrar Çöz!',
            ), //Text
            textColor: Colors.blue,
            onPressed: resetHandler,
          ), //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
