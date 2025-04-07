void main() {  
var minimarketStatus = "open";
  var telur = "ready";
  var buah = "ready";

  //switch case
  switch (minimarketStatus) {
    case "open":
      print("Status minimarket: buka");
      break;
    case "closed":
      print("Status minimarket: tutup");
      break;
    default:
      print("Status minimarket tidak diketahui");
  }  

  // Operator ternary
  String statusBelanja = minimarketStatus == "open" ? "Bisa belanja" : "Tidak bisa belanja";
  print(statusBelanja);

  // If-else
  if (minimarketStatus == "open") {
    print("Saya akan membeli telur dan buah");

    if (telur == "soldout" && buah == "soldout") {
      print("Telur dan buah habis");
    } else if (telur == "soldout") {
      print("Telur habis");
    } else if (buah == "soldout") {
      print("Buah habis");
    } else {
      print("Belanjaan saya lengkap");
    }
  } else {
    print("Minimarket tutup, saya pulang lagi");
  } 
}