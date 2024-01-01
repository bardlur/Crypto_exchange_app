import 'package:crypto_app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import '../data/model/crypto.dart';

class Wallet extends StatefulWidget {
  Wallet({super.key, this.cryptoList});
  final List<Crypto>? cryptoList;

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  List<Crypto>? cryptoList;

  @override
  void initState() {
    super.initState();
    cryptoList = widget.cryptoList;
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome',
                      style: TextStyle(
                        fontFamily: 'CoreSansC',
                        fontSize: 16,
                        color: greyColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Bardia Khademi',
                      style: TextStyle(
                        fontFamily: 'CoreSansC',
                        fontSize: 20,
                        color: blackColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/Bardia.png',
                  ),
                  radius: 30,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 330,
              height: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: blueColor,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Balance',
                      style: TextStyle(
                        fontFamily: 'CoreSansC',
                        fontSize: 16,
                        color: lightGreyColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '\$' + '29,564' ,
                      style: TextStyle(
                        fontFamily: 'CoreSansC',
                        fontSize: 40,
                        color: whiteColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Monthly Profit',
                      style: TextStyle(
                        fontFamily: 'CoreSansC',
                        fontSize: 16,
                        color: lightGreyColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$' + '6,308' ,
                          style: TextStyle(
                            fontFamily: 'CoreSansC',
                            fontSize: 30,
                            color: whiteColor,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: whiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                            ),
                            minimumSize: Size(13.0, 30.0),
                          ),
                          onPressed: () {}, 
                          child: Text(
                            '+' '21.3' '%',
                            style: TextStyle(
                              fontSize: 15,
                              color: blueColor,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'CoreSansC'
                            ),
                          ),
                        ), 
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'My Portfolio',
                    style: TextStyle(
                      fontFamily: 'CoreSansC',
                      fontSize: 20,
                      color: blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        width: 210,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: whiteColor,
                          boxShadow: [
                            BoxShadow(
                              color:lightGreyColor,
                              blurRadius: 3,
                              spreadRadius: 1,
                              offset: Offset(0, 0)
                            ),
                          ] 
                        ),
                        child: _getPortfolioList(cryptoList![index])
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget _getPortfolioList(Crypto crypto) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 15),
              child: Image.network(crypto.image),
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              crypto.symbol.toUpperCase(),
              style: TextStyle(
                fontFamily: 'CoreSansC',
                fontWeight: FontWeight.bold,
                fontSize: 22
              ),
            ),
            Text(
              '/USDT',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: greyColor
              ),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Text(
                '\$' + crypto.currentPrice.toStringAsFixed(0),
                style: TextStyle(
                  fontFamily: 'CoreSansC',
                  fontWeight: FontWeight.bold,
                  fontSize: 22
                ),
              ),
              SizedBox(
                width: 30,
              ),
              _getChangePercentColor(
                double.parse(
                  crypto.priceChangePercentage24h.toStringAsFixed(2),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget _getChangePercentColor(double percentChange) {
    return percentChange <= 0 
    ? Text(
        percentChange.toString() + '%', 
        style: TextStyle(
          fontFamily: 'CoreSansC', 
          fontSize: 16,
          color: redColor,
        ),
      )
    : Text(
      '+' + percentChange.toString() + '%', 
      style: TextStyle(
        fontFamily: 'CoreSansC', 
        fontSize: 16, 
        color: greenColor,
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

      cryptoList = cryptoApiList;

      return cryptoApiList;
    } catch (error, stacktrace) {
      print("Error occurred: $error stackTrace: $stacktrace");
      throw Exception("Failed to fetch data");
    }
  }
}