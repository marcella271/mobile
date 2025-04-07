
// bekerja dengan synchronous dan asynchronous
/*void main (List<String> args) async{
  var t = Titan();

  print("zeke");
  print(t.name);
  await t.getName();

  print(t.name);
  print("rener");
}

class Titan{
  String name = "Eren Yeger";
  
  Future<void> getName()async{
    await Future.delayed(Duration(seconds: 3));
    name = "grisha";
    print("get name [done]");
  }
}*/

//bekerja dengan future dan delayed tanpa async await
/*Future delayedPrint(int seconds, String message){
  final duration = Duration(seconds : seconds);
  return Future.delayed(duration).then((value) => message);
}

main(List<String> args){
print("roger");
delayedPrint(2, "pirates"). then((status){
  print(status);
});
print("is");
}*/

//bekerja dengan asynchronous, await, future
void main(List<String> args) async{
  print("Persiapan, mulai");
  print(await line());
  print(await line2());
}

Future<String> line() async{
  String greeting = "pagiku cerah matahari bersinar...";
  return await Future.delayed(Duration(seconds: 5), () => (greeting));
}
Future<String> line2() async {
  String greeting = "kugendong tas merahku, di pundak.....";
  return await Future.delayed(Duration(seconds: 3), () => (greeting));
}

