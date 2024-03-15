import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NeTinder',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'NeTinder'),
      debugShowCheckedModeBanner: false,
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _counter1;
  late int _counter2;
  late String _message1;
  late String _message2;
  late String _fact;


  List<String> facts = [
    'Законодательство США допускало отправку детей по почте до 1913 года.',
    'В Ирландии никогда не было кротов.',
    'Библия – книга, которую чаще всего воруют в магазинах.',
    'Ежедневно 60 человек становятся миллионерами.',
    'До 17 века термометры заполняли коньяком.',
    'Самый долгий полёт курицы продолжался 13 секунд.',
    'На Юпитере регулярно идут алмазные дожди.',
    'В мире всего 7% левшей',
    'У жирафа и человека одинаковое количество шейных позвонков.',
    'Во владивостокском морском заповеднике «Дальневосточный» обитает более 1000 видов рыб.'
  ];

  List<String> messages1 = [
    'Зачем ты это нажала?!',
    'Теперь я грущу.',
    'Очень печально.',
    'Что тебе не понравилось?',
    'Со мной что-то не так?',
    'Ну и не надо.'
  ];

  List<String> messages2 = [
    'Я очень рад!',
    'Скоро увидимся!',
    'Как дела? Буду рад пообщаться',
    'Очень хотел бы сходить с тобой куда-нибудь',
    'Чем занимаешься?',
    'Надеюсь наше знакомство мне запомнится'
  ];

  @override
  void initState() {
    super.initState();
    _counter1 = Random().nextInt(500) + 1;
    _counter2 = Random().nextInt(500) + 1;
    _fact = '';
    _message1 = 'Забудь об этой кнопке.';
    _message2 = 'Скорее поставь лайк!';
  }

  void _changeFact() {
    setState(() {
      _fact = facts[Random().nextInt(facts.length)];
    });
  }

  void _changeMessage1() {
    setState(() {
      _message1 = messages1[Random().nextInt(messages1.length)];
    });
  }

  void _changeMessage2() {
    setState(() {
      _message2 = messages2[Random().nextInt(messages2.length)];
    });
  }

  void _incrementCounter1() {
    setState(() {
      _counter1++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(widget.title),
            // const SizedBox(width: 90),
            // const Text('Андрей Билзнецов'),
          ],
        ),
        backgroundColor: Colors.pink,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 250,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Icon(
                  Icons.account_box_outlined,
                  size: 250,
                ),
              ),
            ),
            Column(
              children: [
                Text(
                  'Основная информация:',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  'Андрей, 22 года, студент ДВФУ.',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Инетересуют: ',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const Icon(Icons.favorite, color: Colors.red,),
                        Text(
                          'серьёзные отношения; ',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Cтатус: ',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Icon(Icons.free_breakfast, color: Colors.green,),
                        Text(
                          'свободен; ',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Ориентация: ',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Icon(Icons.male, color: Colors.blue,),
                        Text(
                          'гетеросексуал.',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'О себе: живу в городе Владивосток, имею музыкальное образование, '
                        'учусь в IT-сфере, уже имею одно высшее инженероне образование, '
                        'в свободное время люблю читать, посещать интересные места в городе и за его пределами.'
                        'Хорошее первое свидание для меня - это пересечься на пару часов за чашкой кофе.'
                        'Больше обо мне сможешь узнать при первой встрече.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      height: 1.2,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                'Любимые музыкальные группы и исполнители: Би-2, Imagine Dragons, Miyagi & Andy Panda, Oxxximyron, Linking park, Avicii, Scorpions, Boulevard Depo',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                      'А ещё я знаю много интересных ',
                      style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 30),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xffd155ff),
                                      Color(0xffdd4cff),
                                      Color(0xffde7aff),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.black,
                                padding: const EdgeInsets.all(16.0),
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: _changeFact,
                              child: const Text('фактов:'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text(
                    _fact,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 30),
              child: Text(
                'Оцените анкету пользователя:',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    _message1,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    _message2,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: () {
                    _incrementCounter1();
                    _changeMessage1();
                    },
                  tooltip: 'Не нравится',
                  child: const Icon(Icons.thumb_down_alt_outlined, color: Colors.brown),
                ),
                FloatingActionButton(
                  onPressed: () {
                    _incrementCounter2();
                    _changeMessage2();
                  },
                  tooltip: 'Нравится',
                  child: const Icon(Icons.favorite, color: Colors.red),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 2.0),
                        child: Text('Количество дизлайков:',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Text(
                        '$_counter1',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 2.0),
                        child: Text('Количество лайков:',
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                      ),
                      Text(
                        '$_counter2',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
