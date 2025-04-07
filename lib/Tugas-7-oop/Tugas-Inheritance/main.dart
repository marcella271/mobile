import 'armor_titan.dart';
import 'attack_titan.dart';
import 'beast_titan.dart';
import 'human.dart';

void main() {
  ArmorTitan armorTitan = ArmorTitan();//membuat objek armorTitan dari kelas Armortotan
  armorTitan.powerPoint = 3; // Harus minimal 5

  AttackTitan attackTitan = AttackTitan();
  attackTitan.powerPoint = 10;

  BeastTitan beastTitan = BeastTitan();
  beastTitan.powerPoint = 7;

  Human human = Human();

  print("Armor Titan Power: ${armorTitan.powerPoint}, Serangan: ${armorTitan.terjang()}");
  print("Attack Titan Power: ${attackTitan.powerPoint}, Serangan: ${attackTitan.punch()}");
  print("Beast Titan Power: ${beastTitan.powerPoint}, Serangan: ${beastTitan.lempar()}");
  print("Human: ${human.killAllTitan()}");
}
