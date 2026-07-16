class HealthModel {
  final String status;
  final String service;
  final String version;
  final String timestamp;

  const HealthModel({
    required this.status,
    required this.service,
    required this.version,
    required this.timestamp,
  });

  factory HealthModel.fromJson(Map<String, dynamic> json) {
    return HealthModel(
      status: json['status'] as String,
      service: json['service'] as String,
      version: json['version'] as String,
      timestamp: json['timestamp'] as String,
    );
  }
}
