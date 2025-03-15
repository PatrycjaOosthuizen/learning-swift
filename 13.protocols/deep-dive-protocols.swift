
protocol CanFly {
  func fly()
}

class Bird {

  var isFemale = true
  
  func layEgg() {
    if isFemale {
      print("The bird makes a new bird in a shell.")
    }
  }
}

class Eagle: Bird, CanFly {
  
  func fly() {
    print("The eagle flaps its wings and lifts off into the sky.")
  }

  func soar() {
    print("The eagle glides in the air using air currents.")
  }
}

class Penguin: Bird {
  func swim() {
    print("The penguin paddles through the water.")
  }
}

struct FlyingMuseum {
  func flyingDemo(flyingObject: CanFly) {  // CanFly protocol can be a datatype for flyingObject
    flyingObject.fly()
  }
}

struct Airplane: CanFly {
  func fly() {
    print("The airplane uses its engine to lift off into the air.")
  }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
myEagle.fly()
myPenguin.layEgg()
myPlane.fly()



let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myEagle) // myEagle is an instance of Eagle class which adopt CanFly protocol
museum.flyingDemo(flyingObject: myPlane) // myPlane is an instance of Airplane class which adopt to CanFly protocol
 ❌ //museum.flyingDemo(flyingObject: myPenguin) // Error: myPenguin is an instance of Penguin class which does not adopt to CanFly protocol