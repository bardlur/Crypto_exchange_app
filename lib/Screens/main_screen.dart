import 'package:crypto_app/Screens/price_screen.dart';
import 'package:flutter/material.dart';
import 'package:crypto_app/Screens/news_screen.dart';
import 'package:crypto_app/Screens/user_screen.dart';
import 'package:crypto_app/Screens/wallet_screen.dart';
import 'package:crypto_app/data/constants/constants.dart';
import 'package:dio/dio.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../data/model/crypto.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  Future<List<Crypto>> _getData() async {
    try {
      var response = await Dio().get('https://api.coingecko.com/api/v3/coins/', 
      queryParameters: {
        'limit': 10,
      });

      List<Crypto> cryptoApiList = (response.data as List)
          .map((jsonMapObject) => Crypto.fromMapJson(jsonMapObject))
          .toList();
      pages[0] = PriceScreen(cryptoList: cryptoApiList);
      pages[3] = Wallet(cryptoList: cryptoApiList);

      return cryptoApiList;
    } catch (error, stacktrace) {
      print("Error occurred: $error stackTrace: $stacktrace");
      throw Exception("Failed to fetch data");
    }
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _getBottomNavigationBar(),
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      )
    );
  }

  Widget _getBottomNavigationBar() {
    return BottomNavigationBar(
      showUnselectedLabels: true,
      showSelectedLabels: true,
      selectedItemColor: blueColor,
      unselectedItemColor: greyColor,
      backgroundColor: backgroundColor,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: FaIcon(
              FontAwesomeIcons.chartSimple,
              size: 32,
              color: lightGreyColor,
            ),
          ),
          activeIcon: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: FaIcon(
              FontAwesomeIcons.chartSimple,
              size: 33,
              color: blueColor,
            ),
          ),
          label: 'Price',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: FaIcon(
              FontAwesomeIcons.newspaper,
              size: 30,
              color: lightGreyColor,
            ),
          ),
          activeIcon: FaIcon(
            FontAwesomeIcons.newspaper,
            color: blueColor,
            size: 33,
          ),
          label: 'News',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: FaIcon(
              FontAwesomeIcons.chartPie,
              size: 30,
              color: lightGreyColor,
            ),
          ),
          activeIcon: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: FaIcon(
              FontAwesomeIcons.chartPie,
              size: 33,
              color: blueColor,
            ),
          ),
          label: 'Finance',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: FaIcon(
              FontAwesomeIcons.wallet,
              size: 30,
              color: lightGreyColor,
            ),
          ),
          activeIcon: Padding(
            padding: const EdgeInsets.only(bottom: 5),
            child: FaIcon(
              FontAwesomeIcons.wallet,
              size: 33,
              color: blueColor,
            ),
          ),
          label: 'Wallet',
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
    );
  }

  List<Widget> pages = [
    PriceScreen(cryptoList: []),
    NewsScreen(),
    FinanceScreen(),
    Wallet(cryptoList: []),
  ];
} 