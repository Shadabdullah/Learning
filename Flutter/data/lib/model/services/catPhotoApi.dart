import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class CatPhotoAPI {
  String endPoint = "api.thecatapi.com";

  Future<Either<Exception, String>> getRandomCatPhoto() async {
    try {
      // Load .env file
      await dotenv.load();

      // Access API key
      String apiKey = dotenv.env['CAT_PHOTO_API'] as String;

      final queryParameters = {
        'api_key': apiKey,
      };

      final uri = Uri.https(endPoint, "/v1/images/search", queryParameters);
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        return Right(response.body);
      } else {
        throw Exception("Failed to fetch cat photo");
      }
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}
