import 'package:flutter/material.dart';
import 'widgets/button.dart';

class Player {
  String? name;

  Player({required this.name});
}

void main() {
  var nico = Player(name: "nico");
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor:
            const Color(0xFF181818), // 원하는 색상값이 있을 때 0xFF 쓴 뒤 똑같이 적어주면 된다.
        body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ), // .all 상하좌우 모두에 padding 10주기, 한쪽만 주는 .only도 있음, .symmetric 수평padding과 수직 padding을 줄 수 있음.
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end, // 수평방향에서의 오른쪽
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end, // 수직방향에서의 오른쪽
                      children: [
                        const Text(
                          "Hey, Selena",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "Welcome back!",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8), // 투명도
                            fontSize: 18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 120,
                ),
                const Text(
                  "Total Balance",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "\$5 194 482",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.w600,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Button(
                      text: "Transfer",
                      bgColor: Color(0xFFF1B33B),
                      textColor: Colors.black,
                    ),
                    Button(
                      text: "Request",
                      bgColor: Color(0xff1f2123),
                      textColor: Colors.white,
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
