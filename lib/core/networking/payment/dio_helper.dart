import 'package:dio/dio.dart';
import 'package:tech_repair_app/core/networking/payment/payment_constant.dart';

class DioHelper {
  static late Dio dio;
  static initDio() {
    dio = Dio(
      BaseOptions(
        baseUrl: PaymentConstants.baseUrl,
        headers: {
          'Content-Type': 'application/json',
        },
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> postData({
    required String url,
    Map<String, dynamic>? data,
  }) async {
    return await dio.post(
      url,
      data: data,
    );
  }
}
