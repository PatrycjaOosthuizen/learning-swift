/*
Exercise : Protocol with Mutating Method
Create a protocol Counter that has a mutating method increment(). 
Then, implement a struct Score that conforms to Counter and increases a points property when increment() is called.
*/

protocol Counter {
    mutating func increment()
}

struct Score: Counter {
    var points = 0
    mutating func increment() {
        points += 1
    }
}   

var myScore = Score()
myScore.increment()
print(myScore.points) // 1
myScore.increment()
print(myScore.points) // 2
myScore.increment()
print(myScore.points) // 3
