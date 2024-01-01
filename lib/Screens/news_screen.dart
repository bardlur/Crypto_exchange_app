import 'package:crypto_app/data/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Crypto News',
          style: TextStyle(
            fontFamily: 'CoreSansC',
            fontSize: 25,
            color: blueColor
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 20, 
                  top: 15, 
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Hot',
                      style: TextStyle(
                        fontFamily: 'CoreSansC',
                        fontSize: 22,
                        color: blackColor
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        bottom: 7
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.fireFlameCurved,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 200,
                  color: Color(0xFF7AC0EF),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20, 
                      right: 20,
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          height: 171,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
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
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/bitcoin.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:  10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                            Text(
                                              'Bitcoin is coming back!',
                                              style: TextStyle(
                                                fontFamily: 'CoreSansC',
                                                fontSize: 13,
                                                color: blackColor,
                                              ),
                                            ),
                                        ],
                                      ),
                                      Text(
                                        'The year 2022 has been very tough for all the cryptocurrencies including Bitcoin and ...',
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: greyColor,
                                          fontSize: 11
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 200,
                          height: 171,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
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
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/musk.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:  10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              'Elon Musk interview',
                                              style: TextStyle(
                                                fontFamily: 'CoreSansC',
                                                fontSize: 13,
                                                color: blackColor,
                                              ),
                                            ),
                                        ],
                                      ),
                                      Text(
                                        'The year 2022 has been very tough for all the cryptocurrencies including Bitcoin and ...',
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: greyColor,
                                          fontSize: 11
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 200,
                          height: 171,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
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
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/bitcoin.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:  10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              'Bitcoin is coming back!',
                                              style: TextStyle(
                                                fontFamily: 'CoreSansC',
                                                fontSize: 13,
                                                color: blackColor,
                                              ),
                                            ),
                                        ],
                                      ),
                                      Text(
                                        'The year 2022 has been very tough for all the cryptocurrencies including Bitcoin and ...',
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: greyColor,
                                          fontSize: 11
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 200,
                          height: 171,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
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
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/musk.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:  10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              'Elon Musk interview',
                                              style: TextStyle(
                                                fontFamily: 'CoreSansC',
                                                fontSize: 13,
                                                color: blackColor,
                                              ),
                                            ),
                                        ],
                                      ),
                                      Text(
                                        'The year 2022 has been very tough for all the cryptocurrencies including Bitcoin and ...',
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: greyColor,
                                          fontSize: 11
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 200,
                          height: 171,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
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
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/musk.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:  10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              'Elon Musk interview',
                                              style: TextStyle(
                                                fontFamily: 'CoreSansC',
                                                fontSize: 13,
                                                color: blackColor,
                                              ),
                                            ),
                                        ],
                                      ),
                                      Text(
                                        'The year 2022 has been very tough for all the cryptocurrencies including Bitcoin and ...',
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: greyColor,
                                          fontSize: 11
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 200,
                          height: 171,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
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
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/musk.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:  10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              'Elon Musk interview',
                                              style: TextStyle(
                                                fontFamily: 'CoreSansC',
                                                fontSize: 13,
                                                color: blackColor,
                                              ),
                                            ),
                                        ],
                                      ),
                                      Text(
                                        'The year 2022 has been very tough for all the cryptocurrencies including Bitcoin and ...',
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: greyColor,
                                          fontSize: 11
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 200,
                  // color: Colors.black,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            Container(
                              width: 110,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.2, 1],
                                  colors: [
                                    Color(0xFFF8AA00), 
                                    Color(0xFFFF0404),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:lightGreyColor,
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                    offset: Offset(0, 0)
                                  ),
                                ] 
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Bitcoin',
                                      style: TextStyle(
                                        fontFamily: 'CoreSansC',
                                        fontSize: 20,
                                        color: whiteColor,
                                      ),
                                    ),
                                    Text(
                                      'News',
                                      style: TextStyle(
                                        fontFamily: 'CoreSansC',
                                        fontSize: 20,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 110,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.2, 1],
                                  colors: [
                                    Color.fromARGB(255, 1, 99, 245), 
                                    Color.fromARGB(255, 36, 5, 84),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:lightGreyColor,
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                    offset: Offset(0, 0)
                                  ),
                                ] 
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Whales',
                                      style: TextStyle(
                                        fontFamily: 'CoreSansC',
                                        fontSize: 20,
                                        color: whiteColor,
                                      ),
                                    ),
                                    Text(
                                      'News',
                                      style: TextStyle(
                                        fontFamily: 'CoreSansC',
                                        fontSize: 18,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 110,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.2, 1],
                                  colors: [
                                    Color(0xFFF10B86), 
                                    Color(0xFF460324),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:lightGreyColor,
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                    offset: Offset(0, 0)
                                  ),
                                ] 
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Biggest',
                                      style: TextStyle(
                                        fontFamily: 'CoreSansC',
                                        fontSize: 20,
                                        color: whiteColor,
                                      ),
                                    ),
                                    Text(
                                      'Loss',
                                      style: TextStyle(
                                        fontFamily: 'CoreSansC',
                                        fontSize: 20,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Container(
                              width: 110,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.2, 1],
                                  colors: [
                                    Color(0xFF5509C7), 
                                    Color(0xFF3C045F),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:lightGreyColor,
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                    offset: Offset(0, 0)
                                  ),
                                ] 
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Currency',
                                      style: TextStyle(
                                        fontFamily: 'CoreSansC',
                                        fontSize: 20,
                                        color: whiteColor,
                                      ),
                                    ),
                                    Text(
                                      'Week',
                                      style: TextStyle(
                                        fontFamily: 'CoreSansC',
                                        fontSize: 20,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 110,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.2, 1],
                                  colors: [
                                   Color(0xFF0C5F86), 
                                    Color(0xFF043549),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:lightGreyColor,
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                    offset: Offset(0, 0)
                                  ),
                                ] 
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Market',
                                      style: TextStyle(
                                        fontFamily: 'CoreSansC',
                                        fontSize: 20,
                                        color: whiteColor,
                                      ),
                                    ),
                                    Text(
                                      'Cap',
                                      style: TextStyle(
                                        fontFamily: 'CoreSansC',
                                        fontSize: 20,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 110,
                              height: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  // stops: [0.2, 1],
                                  colors: [
                                    Color(0xFF0C862C), 
                                    Color(0xFF044927),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color:lightGreyColor,
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                    offset: Offset(0, 0)
                                  ),
                                ] 
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Most',
                                      style: TextStyle(
                                        fontFamily: 'CoreSansC',
                                        fontSize: 20,
                                        color: whiteColor,
                                      ),
                                    ),
                                    Text(
                                      'Profit',
                                      style: TextStyle(
                                        fontFamily: 'CoreSansC',
                                        fontSize: 20,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  bottom: 10,
                  top: 10
                ),
                child: Row(
                  children: [
                    Text(
                      'Currency',
                      style: TextStyle(
                        fontFamily: 'CoreSansC',
                        fontSize: 22,
                        color: blackColor
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        bottom: 7
                      ),
                      child: FaIcon(
                        FontAwesomeIcons.bitcoin,
                        size: 25,
                      ),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 200,
                  color: Color(0xFF7AC0EF),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          height: 171,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: whiteColor,
                          //   boxShadow: [
                          //     BoxShadow(
                          //       color:lightGreyColor,
                          //       blurRadius: 3,
                          //       spreadRadius: 1,
                          //       offset: Offset(0, 0)
                          //     ),
                          //   ] 
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/images/index.png'),
                                  height: 110,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:  10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Ripple\'s high profit',
                                            style: TextStyle(
                                              fontFamily: 'CoreSansC',
                                              fontSize: 13,
                                              color: blackColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'The year 2022 has been very tough for all the cryptocurrencies including Bitcoin and ...',
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: greyColor,
                                          fontSize: 11
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 200,
                          height: 171,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: whiteColor,
                            // boxShadow: [
                            //   BoxShadow(
                            //     color:lightGreyColor,
                            //     blurRadius: 3,
                            //     spreadRadius: 1,
                            //     offset: Offset(0, 0)
                            //   ),
                            // ] 
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/bnb.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:  10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            'BNB\'s high profit',
                                            style: TextStyle(
                                              fontFamily: 'CoreSansC',
                                              fontSize: 13,
                                              color: blackColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'The year 2022 has been very tough for all the cryptocurrencies including Bitcoin and ...',
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: greyColor,
                                          fontSize: 11
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 200,
                          height: 171,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: whiteColor,
                            // boxShadow: [
                            //   BoxShadow(
                            //     color:lightGreyColor,
                            //     blurRadius: 3,
                            //     spreadRadius: 1,
                            //     offset: Offset(0, 0)
                            //   ),
                            // ] 
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/images/bitcoin.png'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:  10),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text(
                                              'Bitcoin is coming back!',
                                              style: TextStyle(
                                                fontFamily: 'CoreSansC',
                                                fontSize: 13,
                                                color: blackColor,
                                              ),
                                            ),
                                        ],
                                      ),
                                      Text(
                                        'The year 2022 has been very tough for all the cryptocurrencies including Bitcoin and ...',
                                        textAlign: TextAlign.start,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 2,
                                        style: TextStyle(
                                          color: greyColor,
                                          fontSize: 11
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

