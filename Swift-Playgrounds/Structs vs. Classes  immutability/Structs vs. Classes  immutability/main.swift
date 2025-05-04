//  main.swift
//  Structs vs. Classes  immutability
//
//  Created by PatrycjaOosthuizen on 04/05/2025.
//

import Foundation

/* let with Classes (Reference Types)
 - let makes the reference itself immutable — you can’t point hero to a different object.
 - But the object that hero points to can still change its internal properties, as long as those properties are declared as var.
 
 --> hero is a constant reference to a mutable class object.

 --> let with class (ClassHero) - let locks the reference, not the object’s properties
 
 Classes
 - has inheritance is a core concept of object-oriented programming
 - work with objective-C code
 -
 
 */
 let hero = ClassHero(name: "Iron Man", universe: "Marvel")
 
 hero.name = "Thor"
 
 print("\(hero.name)")
 print("\(hero.universe)")
 

/*
 let with Structs (Value Types)
with struct, this would NOT be allowed.
Because structs are value types. When you declare a let constant for a struct, you’re freezing the whole value — no changes to any property are allowed.
 

 let hero = StructHero(name: "Iron Man", universe: "Marvel")
 hero.name = "Thor" // ❌ Error: Cannot assign to property: 'hero' is a 'let' constant
 
 --> let with struct (StructHero) - let locks the entire value — no changes allowed
 
 
Structs
 - simpler
 - faster
 - deep copies
 - true immutability
 - no memory leaak
 - threadsafe
 
  ‼️ It's best to use structs by default and only switch to a class when you need inheritance or need to work with Objective-C code.
 */
