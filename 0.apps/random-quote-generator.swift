/* 
Random Quote Generator (Array & Randomization) 📝
Create an array of quotes and write a function to return a random quote each time it is called.*/


import Foundation  // Foundation framework, which includes the randomElement() function used for selecting a random value.
// Array of Quotes
let quotes = [
    "The greatest glory in living lies not in never falling, but in rising every time we fall. - Nelson Mandela",
    "The way to get started is to quit talking and begin doing. - Walt Disney",
    "Your time is limited, so don't waste it living someone else's life. - Steve Jobs",
    "If life were predictable it would cease to be life, and be without flavor. - Eleanor Roosevelt",
    "If you look at what you have in life, you'll always have more. - Oprah Winfrey",
    "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success. - James Cameron",
    "Life is what happens when you're busy making other plans. - John Lennon"
]
// Function to get a random quote
func getRandomQuote() -> String { // Return a random quote from the array, if the array is empty, a default message is returned.
    if let quote = quotes.randomElement() {  
        return quote
    } else {
        return "No quotes available"
    }
}

// ✅ Test the Random Quote Generator
print("📜 Random Quote: \(getRandomQuote())") // Output: A random quote from the array  
