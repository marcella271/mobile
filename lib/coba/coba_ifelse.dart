void main() {  
var minimarketStatus = "open"; 
var telur = "ready"; 
var buah = "ready"; 
if (minimarketStatus == "open") { 
print("saya akan membeli telur dan buah"); 
if (telur == "soldout") { 
print("telur habis");  
} else if (buah == "soldout") { 
print("buah habis"); 
} if (telur == "soldout" || buah == "soldout") {
  print("belanjaan saya tidak lengkap");
} else if (telur == "ready" || buah == "ready"){
  print("saya pulang dengan membawa belanjaan yang lengkap");
}
} else { 
print("minimarket tutup, saya pulang lagi"); 
}  
}