/* 
Weather Forecast App ☀️🌧
Use of Arrays: Storing daily temperature data
How It Works:
- Store daily temperatures in an array.
- Find the highest and lowest temperatures.
- Show the forecast for the week.
*/

// An array to store temperatures for a week (in Celsius)
var temperatures = [22, 24, 18, 30, 25, 21, 19]

// Function to find the minimum and maximum temperatures in the list
func findMinMaxTemp() -> (min: Int, max: Int)? {
    //  Check if the temperatures array is empty. If it is, return nil (no result).
    guard let first = temperatures.first else { return nil }

    // Initialize both minTemp and maxTemp with the first temperature in the list.
    var minTemp = first, maxTemp = first

    //  Loop through the array and compare each temperature
    for temp in temperatures {
        //  If the current temperature is less than the current minTemp, update minTemp
        if temp < minTemp { minTemp = temp }
        
        //  If the current temperature is greater than the current maxTemp, update maxTemp
        if temp > maxTemp { maxTemp = temp }
    }

    //  Return a tuple with the minimum and maximum temperatures
    return (minTemp, maxTemp)
}

//  Check if a result is returned from the function (non-nil)
if let result = findMinMaxTemp() {
    //  If there's a valid result, print the minimum and maximum temperatures
    print("Min Temp: \(result.min), Max Temp: \(result.max)")
} else {
    //  If no result was returned (array is empty), print a message
    print("No temperatures available")
}
