class ApiConstants {
  ApiConstants._();
  
  static const String baseUrl = 'https://restcountries.com/v3.1/';
  
  static const Duration connectTimeout = Duration(seconds: 10);
  static const Duration receiveTimeout = Duration(seconds: 10);
  
  static const Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
}