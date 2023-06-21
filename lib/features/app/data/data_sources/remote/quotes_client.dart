import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quotlum/features/app/data/models/raw_quote.dart';
import 'package:quotlum/features/app/domain/entities/classes/quote.dart';

class QuotesClient {
  static final Uri _apiUrl = Uri.https("api.quotable.io", "/random");

  static Future<Quote> createQuote() async {
    var response = await http.get(_apiUrl);
    var decodedResponse = jsonDecode(response.body);
    
    RawQuote rawQuote = RawQuote.fromJson(decodedResponse);

    return Quote(text: rawQuote.content, author: rawQuote.author);
  }
}