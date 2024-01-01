class Crypto {
  String name;
  String symbol;
  double priceChangePercentage24h;
  double currentPrice;
  String image;

  Crypto({
    required this.name,
    required this.symbol,
    required this.priceChangePercentage24h,
    required this.currentPrice,
    required this.image,
  });

  factory Crypto.fromMapJson(Map<String, dynamic> jsonMapObject) {
    final marketData = jsonMapObject['market_data'];
    final currentPrice = marketData['current_price']['usd'];

    return Crypto(
      name: jsonMapObject['name'],
      symbol: jsonMapObject['symbol'],
      priceChangePercentage24h: marketData['price_change_percentage_24h'] ??
          0.0, // Use a default value
      currentPrice: currentPrice != null
          ? double.parse(currentPrice.toString())
          : 0.0, // Use a default value
      image: jsonMapObject['image']['small'],
    );
  }
}