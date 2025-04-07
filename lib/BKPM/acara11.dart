import 'dart:async';

void main(List<String> args) async {
  var h = Human();

  print("Luffy");
  print("Zoro");
  print("Killer");
  print(h.name);

  await h.getData(); // Menunggu proses async selesai

  print("Name 3: ${h.name}");
}

class Human {
  String name = "nama character one piece";

  Future<void> getData() async {
    await Future.delayed(Duration(seconds: 3)); // Delay 3 detik
    name = "hilmy";
    print("get data [done]");
  }
}
