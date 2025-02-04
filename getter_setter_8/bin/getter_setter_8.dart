/* import 'package:getter_setter_8/getter_setter_8.dart' as getter_setter_8;

void main(List<String> arguments) {
  print('Hello world: ${getter_setter_8.calculate()}!');
} */

class Car {
  int _speed = 0;  // Atribut Privat Guna Underscore (_)

  // Getter Tuk Dapatkan Nilai Speed
  int get speed => _speed;

  // Setter Tuk Atur Nilai Speed Tadi Guna Validation
  set speed(int value) {
    if (value < 0) {
      print('Alamak! Speed Mana Boleh Negatif?! Jadilah Speed Kena Atur Pada 0 Sebab Kau! Tuh Lah Kenapa'); 
      _speed = 0;
    } else {
      _speed = value;
    }
  }

  void tampilkanInfo() {
    print('Kecepatan Kereta Menuju Kuala Lumpur Sekarang Ni Ialah: $_speed Km/Jam'); // Kereta In Malay Means Car
  }
}

void main() {
  Car kereta = Car();

  // Aturkan Speed Guna Setter
  kereta.speed = 50;
  kereta.tampilkanInfo();  // Output: Kecepatan Kereta Sekarang Ni: 50 Km/Jam

  // Aturkan Speed Guna Nilai Negatif
  kereta.speed = -30;
  kereta.tampilkanInfo();  // Output: Speed tidak boleh negatif. Mengatur speed ke 0.

  // Dapatkan Nilai Speed Guna Getter Lepas Perubahan
  print('Ialah Tu Nasib.. Baru Ja Sampai Johor, Dah Lah Speed ${kereta.speed} Km/Jam.. Terbalik Lah Cam Ni');
}

