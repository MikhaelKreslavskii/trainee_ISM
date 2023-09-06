import 'dart:html';

/// Object equipable by a [Character].
abstract class Item {}

class Weapon extends Item{

  bool sword = false;
  bool gun = false;



}

class Armor extends Item{

}

mixin Damage on Weapon{

  int getDamage()
  {
    int countDamage =0;
    if(sword==true)
    {
      countDamage+=3;
    }
    if (gun == true)
    {
      countDamage +=5;
    }

    return countDamage;
  }

}

mixin Defend on Armor

{

}
class Character {
  Item? leftHand;
  Item? rightHand;
  Item? hat;
  Item? torso;
  Item? legs;
  Item? shoes;

  /// Returns all the [Item]s equipped by this [Character].
  Iterable<Item> get equipped =>
      [leftHand, rightHand, hat, torso, legs, shoes].whereType<Item>();

  /// Returns the total damage of this [Character].
  int get damage {
    
    // TODO: Implement me.
    return leftHand.;
  }

  /// Returns the total defense of this [Character].
  int get defense {
    // TODO: Implement me.
    return 0;
  }

  /// Equips the provided [item], meaning putting it to the corresponding slot.
  ///
  /// If there's already a slot occupied, then throws a [OverflowException].
  void equip(Item item) {
    
  }
}

/// [Exception] indicating there's no place left in the [Character]'s slot.
class OverflowException implements Exception {}

void main() {
  // Implement mixins to differentiate [Item]s into separate categories to be
  // equipped by a [Character]: weapons should have some damage property, while
  // armor should have some defense property.
  //
  // [Character] can equip weapons into hands, helmets onto hat, etc.

}
