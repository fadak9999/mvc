class Advice {
  final String advice;

  Advice({required this.advice});

  factory Advice.fromJson(Map<String, dynamic> json) {
    return Advice(advice: json['slip']['advice']);
  }
}
