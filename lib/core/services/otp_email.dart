import 'dart:math';
import 'package:http/http.dart' as http;
import 'dart:convert';

// 1. توليد كود عشوائي
String generateOTP() {
  var rng = Random();
  var code = rng.nextInt(900000) + 100000; // يولد رقم من 6 خانات
  return code.toString();
}

// 2. إرسال الكود عبر EmailJS
Future sendOTP(String userEmail, String otpCode) async {
  final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({
      'service_id': 'service_5m5w8r9',
      'template_id': 'template_1p664cl',
      'user_id': 'YOUR_PUBLIC_KEY',
      'template_params': {'user_email': userEmail, 'otp_code': otpCode},
    }),
  );
  return response.statusCode;
}
