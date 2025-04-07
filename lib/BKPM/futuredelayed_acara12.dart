void Print(int seconds, String message) {
  Future.delayed(Duration(seconds: seconds), () => print(message));
}

main(List<String> args) {
  Print(1, "Life");
  Print(3, "never flat");
  Print(2, "is");
}
