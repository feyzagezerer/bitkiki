import 'package:bitkiki/quiz.dart';
import 'package:bitkiki/test_sonuc.dart';
import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TestState();
  }
}

class _TestState extends State<Test> {
  final _questions = const [
    {
      'questionText': '1. Kaç tane bitkiniz var?',
      'answers': [
        {'text': 'Henuz yok, alacağım', 'score': -1},
        {'text': '1-6 tane', 'score': 5},
        {'text': '6 ve daha fazla', 'score': 10},
      ],
    },
    {
      'questionText': '2. Hangisi sizin zevkinize daha uygun?',
      'answers': [
        {'text': 'Dikkat çekici, farklı tasarım saksılar', 'score': 5},
        {'text': 'Palet üzerinde saksılar', 'score': -1},
        {'text': 'Her yerde bitkiler', 'score': 10},
      ],
    },
    {
      'questionText':
          ' 3. Dekoratif bir ürün alırken sizin için hangisi daha önemlidir?',
      'answers': [
        {'text': 'Güzel, eve uygun tasarıma sahip olması', 'score': 5},
        {'text': 'İşlevsel olması', 'score': 100},
        {'text': 'Fiyatı', 'score': -1},
      ],
    },
    {
      'questionText': '4. Birini seçecek olsanız hangisini seçerdiniz?',
      'answers': [
        {'text': 'Sukulentler', 'score': -1},
        {'text': 'Çiçekli bitkiler', 'score': 5},
        {'text': 'Büyük gövdeli bitkiler', 'score': 5},
      ],
    },
    {
      'questionText': '5. Bitki alırken hangisini daha çok önemsersiniz?',
      'answers': [
        {
          'text': 'Bakımı kolay bir bitki olması',
          'score': -1,
        },
        {'text': 'Renkli çiçeklerinin olmasını', 'score': 5},
        {'text': 'Koyacağım yere uygun olması', 'score': 5},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('Daha fazla soru var!');
    } else {
      print('Başka soru yok!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
              'Eviniz için en uygun bitkiyi \ntestimizi çözerek bulabilirsiniz.'),
          backgroundColor: Color(0xFF00E676),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                ) //Quiz
              : Result(_totalScore, _resetQuiz),
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    ); //MaterialApp
  }
}
