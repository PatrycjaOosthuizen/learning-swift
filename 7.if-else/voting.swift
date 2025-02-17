/* 
Check Voting Eligibility
Exercise:
Write a function canVote that takes a person's age and prints whether they are eligible to vote (18 or older).*/

func canVote(age: Int) {
    if age >= 18 {
        print("You are eligible to vote.")
    } else {
        print("You are not eligible to vote.")
    }
}

// Example usage:
canVote(age: 20)  // Output: You are eligible to vote.
canVote(age: 16)  // Output: You are not eligible to vote.
canVote(age: 18)  // Output: You are eligible to vote.