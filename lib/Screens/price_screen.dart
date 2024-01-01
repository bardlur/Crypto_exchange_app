import 'package:flutter/material.dart';
import 'package:crypto_app/data/constants/constants.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../data/model/crypto.dart';
import 'package:dio/dio.dart';

class PriceScreen extends StatefulWidget {
  
  PriceScreen({Key? key, this.cryptoList});
  final List<Crypto>? cryptoList;

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  List<Crypto>? cryptoList;
  bool isLoadingSearchVisible = false;
  bool isDarkMode = false;
  bool isFavorit = false;

  FocusNode textFieldFocus = FocusNode();


  void checkTheme() {
    setState(() {
      isDarkMode =! isDarkMode;
    });
  }

  void favorit() {
    setState(() {
      isFavorit =! isFavorit;
    });
  }

  @override
  void initState() {
    super.initState();
    _getData();
    cryptoList = widget.cryptoList;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ' CoinBase',
          style: TextStyle(
            fontFamily: 'CoreSansC',
            fontSize: 25
          ),
        ),
        backgroundColor: blueColor,
        actions: [
          TextField(
            focusNode: textFieldFocus,
            onChanged: (value) {
              _filterList(value);
            },
            style: TextStyle(
              color: whiteColor,
              fontWeight: FontWeight.bold, 
              fontSize: 20,
            ),
            decoration: InputDecoration(
              constraints: BoxConstraints(
                minHeight: 10,
                maxWidth: 120
              ),
              // hintText: 'Search your currency',
              // hintStyle: TextStyle(
              //   color: whiteColor,
              //   fontSize: 20
              // ),
              border: InputBorder.none,
              filled: true,
              fillColor: blueColor,
              suffixIcon: IconButton(
                // selectedIcon: ,
                onPressed: () {},
                icon: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: InkWell(
                    onTap: () {
                      FocusScope.of(context).requestFocus(textFieldFocus);
                    },
                    child: FaIcon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: whiteColor,
                      size: 25,
                    ),
                  ),
                ), 
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          GestureDetector(
            onTap: () {
              checkTheme();
            }, 
            child: Icon(
              isDarkMode ? Icons.sunny : Icons.dark_mode,
              size: 32,
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Column(
            children: [
              _getRowgrouping(),
              Visibility(
                visible: isLoadingSearchVisible,
                child: SpinKitThreeBounce(
                  color: blueColor,
                  size: 25,
                ),
              ),
              Expanded(
                child: RefreshIndicator(
                  color: blueColor,
                  onRefresh: () async {
                    List<Crypto> freshData = await _getData();
                    setState(() {
                      cryptoList = freshData;
                    });
                  },
                  child: ListView.separated(
                    itemCount: cryptoList!.length,
                    separatorBuilder: (BuildContext context, int index) 
                       => Divider(height: 5, color: greyColor),
                    itemBuilder: (context, index) {
                      return _getListTile(cryptoList![index]);
                    },
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }

  Widget _getListTile(Crypto crypto) { 
    return ListTile(
      title: Row(
        children: [
          Text(
            crypto.symbol.toUpperCase(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 19
            ),
          ),
          Text(
            ' / USDT',
            style: TextStyle(
              color: blueColor,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),
          ),
        ],
      ),
      subtitle: Text(
        crypto.name,
        style: TextStyle(
          fontSize: 17
        ),
      ),
      leading: SizedBox(
        width: 40,
        child: Center(
          child: Image.network(crypto.image),
        ),
      ),
      trailing: SizedBox(
        width: 170,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _getPriceColor(crypto.priceChangePercentage24h, crypto.currentPrice),
                _getChangePercentColor(
                  double.parse(
                    crypto.priceChangePercentage24h.toStringAsFixed(2),
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                favorit();
              }, 
              icon: isFavorit 
                ? FaIcon(
                FontAwesomeIcons.solidStar,
                size: 15,
                color: blackColor,)
                : FaIcon(
                FontAwesomeIcons.star,
                size: 15,
                color: greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getRowgrouping() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              minimumSize: Size(30.0, 25.0),
              side: BorderSide(color: blueColor, width: 2.0),
            ),
            onPressed: () {}, 
            child: Text(
              'All',
              style: TextStyle(
                fontSize: 16,
                color: blueColor
              ),
            ),
          ), 
          SizedBox(
            width: 5,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              minimumSize: Size(30.0, 25.0),
              side: BorderSide(color: greyColor, width: 2.0),
              primary: Colors.black,
            ),
            onPressed: () {}, 
            child: Text(
              'Gainers',
              style: TextStyle(
                fontSize: 16,
                color: greyColor
              ),
            ),
          ), 
          SizedBox(
            width: 5,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              minimumSize: Size(30.0, 25.0),
              side: BorderSide(color: greyColor, width: 2.0),
            ),
            onPressed: () {}, 
            child: Text(
              'Losers',
              style: TextStyle(
                fontSize: 16,
                color: greyColor
              ),
            ),
          ), 
          SizedBox(
            width: 5,
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))
              ),
              minimumSize: Size(30.0, 25.0),
              side: BorderSide(color: greyColor, width: 2.0),
            ),
            onPressed: () {}, 
            child: Text(
              '24H vol',
              style: TextStyle(
                fontSize: 16,
                color: greyColor
              ),
            ),
          ), 
        ],
      ),
    );
  }

  Widget _getChangePercentColor(double percentChange) {
    return percentChange <= 0 ?
    Text(percentChange.toString() + '%', style: TextStyle(fontSize: 16,color: redColor),)
    : Text('+' + percentChange.toString() + '%', style: TextStyle(fontSize: 16, color: greenColor),);
  }

  Widget _getPriceColor(double percentChange, double price) {
    return percentChange <= 0 ?
    Text(price.toStringAsFixed(2), 
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19, color: redColor),)
    : Text(price.toStringAsFixed(2), 
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19, color: greenColor),);
  }

  void _filterList(String enteredKeyword) async {
    List<Crypto> cryptoResultList = [];
    if(enteredKeyword.isEmpty) {
      setState(() {
        isLoadingSearchVisible = true;
      });
      var result = await _getData();
      setState(() {
        cryptoList = result;
        isLoadingSearchVisible = false;
      });
      return;
    }

    cryptoResultList = cryptoList!.where((element) {
      return element.symbol.toLowerCase().contains(enteredKeyword.toLowerCase());
    }).toList();

    setState(() {
      cryptoList = cryptoResultList;
    });
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

  

  