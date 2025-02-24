/* 
Movie Rating System 🍿
Goal: Rate movies and store them in a dictionary.
Concepts Used
✅ Variables
✅ Dictionaries
✅ Functions
*/
import Foundation

var movieRatings: [String: Int] = ["Inception": 5, "Titanic": 4]

func rateMovie(movie: String, rating: Int) {
    movieRatings[movie] = rating
    print("🎬 \(movie) rated \(rating) stars.")
}

rateMovie(movie: "Avatar", rating: 3)
print("⭐ Updated Ratings: \(movieRatings)")