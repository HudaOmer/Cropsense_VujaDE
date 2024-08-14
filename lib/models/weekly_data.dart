class WeeklyData {
  final List<double> temperatures;
  final List<double> humidities;
  final List<double> lights;
  final List<double> soilMoistures;

  WeeklyData({
    required this.temperatures,
    required this.humidities,
    required this.lights,
    required this.soilMoistures,
  });

  // Factory constructor to create an instance from JSON data
  factory WeeklyData.fromJson(Map<String, dynamic> json) {
    return WeeklyData(
      temperatures: _convertToDoubleList(json['temperatures']),
      humidities: _convertToDoubleList(json['humidities']),
      lights: _convertToDoubleList(json['lights']),
      soilMoistures: _convertToDoubleList(json['soil_moistures']),
    );
  }

  // Helper method to convert JSON data to List<double>
  static List<double> _convertToDoubleList(Map<String, dynamic> data) {
    // Extract values from the map and convert to List<double>
    return data.values.map((value) {
      // Handle conversion of string to double if needed
      if (value is String) {
        return double.tryParse(value) ?? 0.0;
      } else if (value is double) {
        return value;
      }
      return 0.0;
    }).toList();
  }
}