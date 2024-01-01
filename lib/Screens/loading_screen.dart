import 'package:crypto_app/Screens/price_screen.dart';
import 'package:crypto_app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../data/model/crypto.dart';
import 'main_screen.dart';


class LoadingScreen extends StatefulWidget {
  LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}
class _LoadingScreenState extends State<LoadingScreen> {
  void initState() {
    super.initState();
    _getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CoinBase',
                style: TextStyle(
                  fontFamily: 'CoreSansC',
                  fontSize: 40,
                  color: Colors.white
                ),
              ),
              SpinKitThreeBounce(
                  color: Colors.white,
              ),
            ],
          ), 
        ),
      ),
    );
  }
  Future<List<Crypto>> _getData() async {
    try {
      var response = await Dio().get('https://api.coingecko.com/api/v3/coins/', 
      queryParameters: {
        'limit': 10,
      });

      List<Crypto> cryptoApiList = (response.data as List)
          .map((jsonMapObject) => Crypto.fromMapJson(jsonMapObject))
          .toList();
          
      Navigator.pop(context);
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => MainScreen(),
        ),
      );

      return cryptoApiList;
    } catch (error, stacktrace) {
      print("Error occurred: $error stackTrace: $stacktrace");
      throw Exception("Failed to fetch data");
    }
  }
}
