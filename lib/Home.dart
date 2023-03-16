import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  int pontuacaoTotal1 = 0;
  int partidasGanhas1 = 0;
  int pontuacaoTotal2 = 0;
  int partidasGanhas2 = 0;
  int truco = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'images/fundo.jpg',
          fit: BoxFit.cover,
          height: 1000,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Numero de pontos equipe 1: $pontuacaoTotal1",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pontuacaoTotal1++;
                        });
                      },
                      child: Text(
                        "+1",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ))),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pontuacaoTotal1--;
                        });
                      },
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ))),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pontuacaoTotal1 = pontuacaoTotal1 + 3;
                        });
                      },
                      child: Text(
                        "Aumentar 3",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ))),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pontuacaoTotal1 = pontuacaoTotal1 - 3;
                        });
                      },
                      child: Text(
                        "Diminuir 3",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ))),
            ]),
            Text(
              "Bom jogo!",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Numero de pontos equipe 2: $pontuacaoTotal2",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pontuacaoTotal2++;
                        });
                      },
                      child: Text(
                        "+1",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ))),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pontuacaoTotal2--;
                        });
                      },
                      child: Text(
                        "-1",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ))),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pontuacaoTotal2 = pontuacaoTotal2 + 3;
                        });
                      },
                      child: Text(
                        "Aumentar 3",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ))),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          pontuacaoTotal2 = pontuacaoTotal2 - 3;
                        });
                      },
                      child: Text(
                        "Diminuir 3",
                        style: TextStyle(fontSize: 40, color: Colors.white),
                      ))),
            ]),
            Text(
              "Bom jogo!",
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30),
            ),
          ],
        ),
      ],
    );
  }
}
