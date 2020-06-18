import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

String apiKey = '4535D1F8-336F-45CB-AB97-8B30D6B7D876';
String url = 'https://rest.coinapi.io/v1/exchangerate/BTC/USD';

class CoinData {
  Future getCoinData() async {
    http.Response response = await http.get(url,
      headers: {'X-CoinAPI-Key': apiKey},
    );
    if (response.statusCode == 200) {
      print(response.body);
    } else {
      print(response.statusCode);
    }
  }
}

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class ListConverter {
  List<Widget> newList = [];
  List<Widget> convertList(List<String> list) {
    for (String string in list) {
      newList.add(Text(string));
    }
    return newList;
  }
}
