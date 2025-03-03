/*  
Merge Two Sorted Arrays into a Single Sorted Array

Example: Input: [1, 3, 5] and [2, 4, 6]
Output: [1, 2, 3, 4, 5, 6]
*/
let array1 = [1, 3, 5]
let array2 = [2, 4, 6]

var mergedArray = [Int]()
var i = 0
var j = 0

while i < array1.count && j < array2.count {
    if array1[i] < array2[j] {
        mergedArray.append(array1[i])
        i += 1
    } else {
        mergedArray.append(array2[j])
        j += 1
    }
}

mergedArray.append(contentsOf: array1[i...])
mergedArray.append(contentsOf: array2[j...])

print(mergedArray)
// Output: [1, 2, 3, 4, 5, 6]