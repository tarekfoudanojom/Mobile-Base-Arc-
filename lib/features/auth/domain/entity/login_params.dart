class LoginParams {
  final String phoneNumber;
  final String countryCode;

  LoginParams({
    required this.phoneNumber,
    required this.countryCode,
  });

  Map<String, dynamic> toJson() => {
        'phone': phoneNumber,
        'country_code': countryCode,
      };
}

