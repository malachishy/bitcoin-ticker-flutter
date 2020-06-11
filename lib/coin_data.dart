import 'package:flutter/cupertino.dart';

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

class CoinData {}
