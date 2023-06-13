import 'package:http/http.dart' as http;
import 'dart:convert';

//api call : https://rest.coinapi.io/v1/exchangerate/BTC/USD?apikey=57288CC9-E85B-4A3F-A646-A3DF4985A385
/*
 {
  "time": "2023-05-25T08:55:18.0000000Z",
  "asset_id_base": "BTC",
  "asset_id_quote": "USD",
  "rate": 26222.358381028956316774471979
}
 */
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

const coinAPIURL = 'https://rest.coinapi.io/v1/exchangerate';
const apiKey = 'YOUR-API-KEY-HERE';

// url = Uri.parse(
// "https://rest.coinapi.io/v1/exchangerate/BTC/$currency?apikey=57288CC9-E85B-4A3F-A646-A3DF4985A385");
class CoinData {
  String currency = 'USD';
  List<String> rates = [];

  CoinData(this.currency);

  Future<List<String>> getCoinData() async {
    List<double> ratesDouble = [];
    for (String crypto in cryptoList) {
      var url = Uri.parse('$coinAPIURL/$crypto/$currency?apikey=$apiKey');
      http.Response response = await http.get(url);
      var result = jsonDecode(response.body);
      double rate = result['rate'];
      ratesDouble.add(rate);
    }

    for (double rate in ratesDouble) {
      rates.add(rate.toStringAsFixed(2));
    }
    return rates;
  }
}
