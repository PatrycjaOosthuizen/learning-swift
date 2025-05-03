//
//  main.swift
//  Structs vs. Classes
//
//  Created by PatrycjaOosthuizen on 03/05/2025.
//

import Foundation

 var hero = StructHero(name: "Iron Man", universe: "Marvel")

 var anotherMarvelHero = hero
 anotherMarvelHero.name = "Captain America"

 print("Hero name: \(hero.name)")
 print("Another Marvel hero name: \(anotherMarvelHero.name)")


















// Class

// Reference type behaviour example :
// var hero = ClassHero(name: "Iron Man", universe: "Marvel")

// var anotherMarvelHero = hero
// anotherMarvelHero.name = "Captain America"

// print("Hero name: \(hero.name)")
// print("Another Marvel hero name: \(anotherMarvelHero.name)")

// Hero name: Captain America
// Another Marvel hero name: Captain America


