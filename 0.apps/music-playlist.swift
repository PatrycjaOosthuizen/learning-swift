/* 
 Music Playlist 🎵
Use of Arrays: Storing and managing songs in a playlist
How It Works:
- Store song names in an array.
- Use functions to play the next/previous song.
- Shuffle the playlist using the .shuffled() method.
*/

import Foundation  // Import Foundation for basic Swift functionality

// Music Playlist - An array of song titles
var playlist = ["Song A", "Song B", "Song C", "Song D"]

// Function to Play the Next Song
func nextSong() -> String {
    // Check if the playlist is empty. If yes, return "No songs available".
    // Otherwise, remove and return the first song in the playlist.
    return playlist.isEmpty ? "No songs available" : playlist.removeFirst()
}

// Function to Shuffle the Playlist
func shufflePlaylist() {
    playlist = playlist.shuffled() // Randomly shuffle the order of songs
}

// ✅ Test the Music Playlist

print("🎵 Playing: \(nextSong())") // Play the first song in the list

shufflePlaylist() // Shuffle the playlist randomly
print("🔀 Shuffled Playlist: \(playlist)") // Print the new shuffled order
