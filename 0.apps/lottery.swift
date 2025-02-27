/* 
Lucky Lottery Number Generator (Randomization) 🎟️
*/

func generateLotteryNumbers() -> [Int] {
    var numbers: [Int] = []
    while numbers.count < 6 {
        let num = Int.random(in: 1...59)
        if !numbers.contains(num) {
            numbers.append(num)
        }
    }
    return numbers.sorted()
}

print("🎟️ Your lucky numbers: \(generateLotteryNumbers())")

