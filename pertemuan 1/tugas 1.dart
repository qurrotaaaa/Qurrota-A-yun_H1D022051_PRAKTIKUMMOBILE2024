void main() {
  
  double suhu1 = 12.0;
  double suhu2 = 25.0;
  double suhu3 = 30.0;
  double suhu4 = 47.0;
  double suhu5 = 55.0;

  
  processSuhu(suhu1);
  processSuhu(suhu2);
  processSuhu(suhu3);
  processSuhu(suhu4);
  processSuhu(suhu5);
}


void processSuhu(double celsius) {
  double fahrenheit = celsiusToFahrenheit(celsius);
  double kelvin = celsiusToKelvin(celsius);
  String kategori = getKategoriSuhu(celsius);

  
  print('--- Suhu: ${celsius}°C ---');
  print('${celsius}°C = ${fahrenheit}°F');
  print('${celsius}°C = ${kelvin} K');
  print('Kategori: $kategori');
  print('---');
}


double celsiusToFahrenheit(double celsius) {
  return (celsius * 9 / 5) + 32;
}


double celsiusToKelvin(double celsius) {
  return celsius + 273.15;
}


String getKategoriSuhu(double suhu) {
  const double dinginThreshold = 15.0;
  const double panasThreshold = 25.0; 

  if (suhu < dinginThreshold) {
    return 'Dingin';
  } else if (suhu >= dinginThreshold && suhu <= panasThreshold) {
    return 'Sedang';
  } else {
    return 'Panas';
  }
}
