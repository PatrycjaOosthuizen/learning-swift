// story brain
//
//  StoryBrain.swift
//  Story-iOS15
//
//  Created by PatrycjaOosthuizen on 28/02/2025.
//

import Foundation

struct StoryBrain {
    let stories = [
        Story(
            title: "You get a last-minute pizza delivery order to the president! You hop on your scooter, but the GPS starts glitching.",
            choice1: "Trust my instincts and take a shortcut.", choice1Destination: 1,
            choice2: "Follow the GPS, no matter what.", choice2Destination: 2
        ),
        Story(
            title: "The shortcut leads you into a dark alley. A group of hungry raccoons blocks your way! They eye the pizza suspiciously.",
            choice1: "Distract them with a breadstick.", choice1Destination: 3,
            choice2: "Outrun them on my scooter.", choice2Destination: 4
        ),
        Story(
            title: "The GPS takes you straight to a broken bridge! The pizza is safe, but now you need to find a way across.",
            choice1: "Build a raft out of pizza boxes.", choice1Destination: 5,
            choice2: "Call for helicopter delivery support.", choice2Destination: 6
        ),
        Story(
            title: "You give the raccoons a breadstick. They are so grateful, they guide you to a hidden shortcut!",
            choice1: "Follow the raccoons.", choice1Destination: 7,
            choice2: "Thank them and speed off.", choice2Destination: 8
        ),
        Story(
            title: "You try to escape, but the raccoons chase you down the street! People are watching in shock.",
            choice1: "Throw them a slice to distract them.", choice1Destination: 9,
            choice2: "Keep running!", choice2Destination: 10
        ),
        Story(
            title: "You build a raft out of pizza boxes and sail across. A fish steals a slice, but you make it!",
            choice1: "Dry off and keep going.", choice1Destination: 11,
            choice2: "Eat a slice for energy.", choice2Destination: 12
        ),
        Story(
            title: "You call helicopter support. A pizza drone arrives to lift you over the bridge!",
            choice1: "Wave at the amazed crowd.", choice1Destination: 11,
            choice2: "Snap a selfie mid-flight.", choice2Destination: 12
        ),
        Story(
            title: "The raccoons lead you directly to the White House! You arrive just in time!",
            choice1: "Deliver the pizza!", choice1Destination: 13,
            choice2: "Ask for a tip.", choice2Destination: 13
        ),
        Story(
            title: "You thank the raccoons and speed off, but you take the wrong turn and end up lost!",
            choice1: "Ask a pedestrian for directions.", choice1Destination: 11,
            choice2: "Try another shortcut.", choice2Destination: 12
        ),
        Story(
            title: "You throw a pizza slice, and the raccoons stop chasing you! A kind stranger offers you a ride.",
            choice1: "Accept the ride.", choice1Destination: 11,
            choice2: "Keep going on foot.", choice2Destination: 12
        ),
        Story(
            title: "You keep running, but you slip on a banana peel! The raccoons take the pizza and disappear.",
            choice1: "Try to find another pizza.", choice1Destination: 13,
            choice2: "Apologize to the president.", choice2Destination: 13
        ),
        Story(
            title: "You arrive just in time! The president is thrilled! You are declared a hero!",
            choice1: "Celebrate with free pizza for life!", choice1Destination: 0,
            choice2: "Open your own pizza shop!", choice2Destination: 0
        )
    ]
    
    var storyNumber = 0
    
    mutating func nextStory(_ userChoice: String) {
        print("Debug - Current storyNumber: \(storyNumber), stories.count: \(stories.count)")

        //  Ensure `storyNumber` is within valid range
        if storyNumber >= 0 && storyNumber < stories.count {
            let currentStory = stories[storyNumber]
            
            if userChoice == currentStory.choice1 {
                storyNumber = currentStory.choice1Destination
            } else {
                storyNumber = currentStory.choice2Destination
            }

            // Prevent out-of-bounds storyNumber
            if storyNumber >= stories.count {
                storyNumber = 0 // Reset or handle error
                print("Warning: storyNumber exceeded stories count, resetting to 0")
            }
        } else {
            print("Error: storyNumber \(storyNumber) is out of range! stories count: \(stories.count)")
        }
    }

    
    func getStoryTitle() -> String {
        if storyNumber >= 0 && storyNumber < stories.count {
            return stories[storyNumber].title
        } else {
            print("Error: storyNumber \(storyNumber) is out of range! stories count: \(stories.count)")
            return "No Story Available"
        }
    }

    func getChoice1() -> String {
        if storyNumber >= 0 && storyNumber < stories.count {
            return stories[storyNumber].choice1
        } else {
            print("Error: storyNumber \(storyNumber) is out of range! stories count: \(stories.count)")
            return "No Choice Available"
        }
    }

    func getChoice2() -> String {
        if storyNumber >= 0 && storyNumber < stories.count {
            return stories[storyNumber].choice2
        } else {
            print("Error: storyNumber \(storyNumber) is out of range! stories count: \(stories.count)")
            return "No Choice Available"
        }
    }

}
