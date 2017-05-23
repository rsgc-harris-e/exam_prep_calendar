var inputs : [Int] = [0, 0, 0]
var prompts : [String] = ["Enter Day: ", "Enter the number of days in the month:", "Enter the special day:"]
var min : [Int] = [1, 28, 1]
var max : [Int] = [7, 31, 0]
var dayNames : [String] = ["Sun ", "Mon ", "Tue ", "Wed ", "Thu ", "Fri ", "Sat "]
var dayCount  = [String] ()

//Input
for i in 0...2 {
    while inputs[i] == 0 {
        max[2] = inputs[1]
        print(prompts[i])
        var input : String?
        input = readLine()
        if let notNilInput = input { //Check if NIL
            if let inputAsInt = Int(notNilInput) { //Check if INT
                if inputAsInt >= min[i] && inputAsInt <= max[i] { //Check if between min and max
                    inputs[i] = inputAsInt
                }
            }
        }
    }
}
//Create space at the begining of the array for the calendar
for j in 0...inputs[0] - 1 {
    dayCount.append("   ")
}

//Add day numbers to the array.
for i in 0...inputs[1] - 1 {
    if i+1 == inputs[2] {
        if i < 9 {
            dayCount.append(" *\(i+1)")
        }
        if i >= 9 {
            dayCount.append("*\(i+1)")
        }
    } else if i < 9 {
        dayCount.append("  \(i+1)")
    } else if i >= 9 {
        dayCount.append(" \(i+1)")
    }
}
for i in 0...9 {
    dayCount.append("    ")
}
print("The total array count is: ","\(dayCount.count)")

//Print the number of days
for i in 0...6 {
    print("\(dayNames[i])", terminator:"")
}
print("")
for i in 1...7 {
    print("\(dayCount[i])", terminator: " ")
}
print("")
for i in 8...14 {
    print("\(dayCount[i])", terminator: " ")
}
print("")
for i in 15...21 {
    print("\(dayCount[i])", terminator: " ")
}
print("")
for i in 22...28 {
    print("\(dayCount[i])", terminator: " ")
}
print("")
for i in 29...35 {
    print("\(dayCount[i])", terminator: " ")
}
print("")
for i in 36...dayCount.count-1 {
    print("\(dayCount[i])", terminator: " ")
}
