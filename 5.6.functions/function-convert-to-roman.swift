/*
Convert a Number to Roman Numerals
👉 Write a function that converts an integer (1–3999) to a Roman numeral.
*/
func intToRoman(_ num: Int) -> String {
  //Create a Roman Numeral Mapping, This is a list of tuples (value, symbol), ordered from largest to smallest.
    let romanMap: [(Int, String)] = [
        (1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
        (100, "C"), (90, "XC"), (50, "L"), (40, "XL"),
        (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")
    ]
    // Initialize an Empty Result String
    var result = "" //  stores the final Roman numeral.
    var number = num // holds the value we are converting.

    //Loop Through the Mapping and Convert
    for (value, symbol) in romanMap {
        while number >= value {
            result += symbol
            number -= value
        }
    }
    
    return result
}

print(intToRoman(1994)) // Output: "MCMXCIV"
print(intToRoman(3999)) // Output: "MMMCMXCIX"
print(intToRoman(47)) // Output: "XLVII"
print(intToRoman(2025)) // Output: "MMXXV"
