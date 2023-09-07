
/// Object equipable by a [Character].
abstract class Item {}

class Weapon extends Item{

  


}

class Armor extends Item{
  final int defence=0;

}

class Helmet extends Armor
{
  @override
  // TODO: implement defence
  int get defence => 3;
  

}

class Pants extends Armor{
  @override
  // TODO: implement defence
  int get defence => 2;

}

class ChestArmour extends Armor
{
 @override
  // TODO: implement defence
  int get defence => 5;
}

class Boots extends Armor{
  @override
  // TODO: implement defence
  int get defence => 1;

}


mixin Damage{

  int getDamage(Item? leftHand, Item? rightHand)
  {
    if((leftHand is Weapon) && (rightHand is Weapon))
    {
      return 10;
    }

    if((leftHand is Weapon)||(rightHand is Weapon))
    {
      return 5;
    }
    return 0;
    
  }

}

mixin Defend 

{
  int getDefence(List<Item?> items)
  {
    int countDefence =0;
    for(Item? item in items)
    {
      if(item is Helmet)
      {
        countDefence+=item.defence;
      }

       if(item is ChestArmour)
      {
        countDefence+=item.defence;
      }

      if(item is Pants)
      {
        countDefence+=item.defence;
      }

      if(item is Boots)
      {
        countDefence+=item.defence;
      }

    }

    return countDefence;

  }

}
class Character with Damage, Defend {
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
    return getDamage(leftHand, rightHand);
  }

  /// Returns the total defense of this [Character].
  int get defense {
    // TODO: Implement me.
    return getDefence([hat,torso,legs,shoes])  ;
  }

  /// Equips the provided [item], meaning putting it to the corresponding slot.
  ///
  /// If there's already a slot occupied, then throws a [OverflowException].
  void equip(Item item) {
   _equipWeapon(item);
   _equipArmor(item);
    
    
  }

  void _equipWeapon(Item? item)
  {
     if(item is Weapon)
    {
      if(leftHand==null)
      {
        leftHand = item;
        return;
      }
      if(rightHand==null)
      {
        rightHand=item;
        return;
      }

      throw OverflowException();
      
    }

  }

  void _equipArmor(Item? item)
  {
     

    if(item is Helmet)
    {
      if(hat==null)
      {
        hat = item;
        return;

      }
      throw OverflowException();
        
    }

    if(item is ChestArmour)
    {
      if(torso==null)
      {
        torso = item;
        return;

      }
      throw OverflowException();
        
    }
    
     if(item is Pants)
    {
      if(legs==null)
      {
        legs = item;
        return;

      }
      throw OverflowException();
        
    }

     if(item is Boots)
    {
      if(shoes==null)
      {
        shoes = item;
        return;

      }
      throw OverflowException();
        
    }
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

  Character ivan = Character();
  Weapon sword = Weapon();
  Weapon gun = Weapon();
  Weapon laser = Weapon();
  Armor helmet = Helmet();
  Armor helmet2=Helmet();
  ivan.equip(sword);
  ivan.equip(gun);
  ivan.equip(helmet);
 /// ivan.equip(helmet2);
 /// ivan.equip(laser);
  print(ivan.equipped);
  print(ivan.damage);
  print(ivan.defense);
}
