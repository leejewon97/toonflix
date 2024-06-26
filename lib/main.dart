import 'package:flutter/material.dart';
import 'package:toonflix/widgets/custom_button.dart';
import 'package:toonflix/widgets/money_card.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool viewAll = false;

  void onPressed() {
    setState(() {
      viewAll = !viewAll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hey, Jatie',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36.0,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 20.0,
                  ),
                ),
                const Text(
                  '\$1 234 567',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const CustomButton(
                      backgroundColor: Color(0xFFF2B33A),
                      textData: 'Transfer',
                      textColor: Colors.black,
                    ),
                    CustomButton(
                      backgroundColor: Colors.grey[900],
                      textData: 'Request',
                      textColor: Colors.white,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 48.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: onPressed,
                      child: viewAll
                          ? const TextWidget()
                          : Text(
                              'View All',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16.0,
                ),
                const MoneyCard(
                  name: 'Euro',
                  amount: '6 248',
                  code: 'EUR',
                  icon: Icons.euro_symbol,
                ),
                MoneyCard(
                  name: 'Dollar',
                  amount: '55 622',
                  code: 'USD',
                  icon: Icons.attach_money,
                  isInvert: true,
                  offset: Offset(0, viewAll ? 0 : -24),
                ),
                MoneyCard(
                  name: 'Bitcoin',
                  amount: '28',
                  code: 'BTC',
                  icon: Icons.currency_bitcoin,
                  offset: Offset(0, viewAll ? 0 : -48),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextWidget extends StatefulWidget {
  const TextWidget({
    super.key,
  });

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  void initState() {
    super.initState();
    print('initState');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Text(
      'View Less',
      style: TextStyle(
        color: Colors.white.withOpacity(0.5),
      ),
    );
  }
}
