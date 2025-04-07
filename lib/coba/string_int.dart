void main() {  
/*print(num.parse('12')); print (int.parse('12'));*/
/*print(num.parse('10.91')); print (double.parse('10.91'));*/
try {
print (num.parse('abc'));
} catch (e) {
print ("Terjadi eror:$e");
}

}
 