// This is a Swift comment
/*
This is a multi line comment.
Swift can be used to make apps for Apple devices, and it can also run on Linux

types:
String
Int
Double
Bool
Array
Dictionary
*/

import Foundation
#if canImport(FoundationNetworking)
import FoundationNetworking
#endif // End specific statements

#if canImport(SwiftUI)
import SwiftUI
#endif

//

enum Oversea { // Enums are consistently typed
    case starboard // You must type this by ITSELF
    case port
    case aft
}

//

protocol Sound { // Create a protocol that can be shared for easy usages, essentially a big placeholder
    var name: String { get }
    func play()
}

extension Sound { // Extend the protocol to use this by default
    var name: String { "unknown" }
    func play() { print("No sound.") }
}

struct PowSound: Sound { // Define a new protocol named "PowSound" using a structure (struct)
    let name = "pow.mp3"
    func play() { print("Bang! Bang!") } // This protocol inherits the main one
}

func playSound(_ sound: any Sound) { // Use the protocols to check the name of the Sound and use the play() function
    print("Playing:", sound.name)
    sound.play() // Call the function using the protocol and it's func
}

protocol Login {
    var username: String { get set } // Use this to allow the value to be written instead of only read
    var password: String { get set }
    var userID: Int { get }
}

struct BasicLogin: Login {
    var username: String
    var password: String
    let userID: Int
}

protocol Appendable {
    associatedtype Item
    // The type of items to be used
    mutating func append(_ item: Item)
    // To add to arrays using functions
}

struct IntAppender: Appendable {
    var items: [Int] = [] // Get your array

    mutating func append(_ item: Int) { // Use the previous function and new array
        items.append(item) // Append the item using its index
        print("Appended \(item)") // Use \() in strings to substitute
    }
}

//

func remainder(a: Int, b: Int) -> Int { // Create a shiny function
    print("Calculated! a % b:")
    return a % b // Modulus operation. It takes the remainder of division instead of the quotient
}

func fetchExample() async { // Use async to fetch a URL
    guard let url = URL(string: "https://api.example.com") else { // The use of a condition checks if the URL is valid. "guard" will enforce it
        print("Bad URL")
        return
    }

    do { // This checks something
        let (data, _) = try await // Try asyncing with data from the URL
        URLSession.shared.data(from: url) // Check the shared data
        print("Downloaded bytes:", data.count) // Print the data count
    } catch {
        print("Request failed:", error) // Return an error if something went wrong
    }
}

// 
#if canImport(SwiftUI) // Import something

struct ContentView: View { // Create a structure to be viewed
    @State private var increment = 0 // A private variable with changable states

    private func checkMessage(for value: Int) -> String {
        // Check higher values first so they can be reached
        if value >= 100 { return "Above/Equal to 100!" }
        if value >= 10 { return "Above/Equal to 10!" }
        if value >= 1 { return "Above/Equal to 1!" }
        return "Value is zero or negative."
    }

    var body: some View { // An element you can see defined in "body"
        let types = ["String", "Bool", "Int", "Float"]

        return VStack(spacing: 12) { // Space between elements
            Text("SwiftUI") // A text element that can be customized
                .font(.largeTitle) // Define the font customization

            Text("Count: \(increment)") // Use \() to substitute values in strings, it will display the variable
            Text(checkMessage(for: increment)) // This will check the value for the range

            Button("Increment Me!") {
                increment += 1
                print("I incremented!")
            }

            List(types, id: \.self) { item in // List the items in an array in a scrollable view
                Text(item) // Said items
            }
        }
        .padding() // Add spacing between elements
    }
}
#endif

//

@main // A main method
enum main { // An enum based class
    static func main() async { // Asyncing main method entry point

        print("hello swift") // Print something
        var a = "Swift" // Declare something
        let b = 10
        print(b)
        let c: Int = 1 // Declare something like an object
        let d: Bool = true
        let e: Double = 3.14
        let f: String = "You can use var for these declarations too"
        _ = (a, d, f) // Keep the sample variables, avoid unused warnings

        var g: String? = nil // Declares a variable, but ? indicates it MAY or MAY NOT have a value
        g = "value"
        if let unwrappedG = g { // Check if had a value
            print(unwrappedG)
        } else { // If not, do this
            print("g is nil")
        }

        let position: Oversea = .port // Use the enums from before inside a variable
        print("Position:", position)

        playSound(PowSound()) // Use the protocols from before
        let login = BasicLogin(username: "demo", password: "pw", userID: 1)
        print("Login userID:", login.userID) // Use the methods

        var appender = IntAppender() // Same as previous lines
        appender.append(1)
        appender.append(2)

        print(remainder(a: 10, b: 3)) // Should print 1 from earlier

        
        if e > Double(c) {
            print("e is larger!")
        } else if Double(c) > e {
            print("c is larger!")
        } else {
            print("Values are equal.")
        }

        for i in 1...10 { // A fixed loop that runs a set iteratuon
            print("i is:", i)
        }

        var i = 0
        while true { // A loop that runs on a condition. true is truthful, which always runs
            print("i is:", i)
            i = i + 1
            if i == 5 {
                print("Breaking loop..")
                break
            } else {
                continue
            }
        }

        let h: [Any] = ["Swift", true, 3.14] // Make an array
        print(h[1])

        if ProcessInfo.processInfo.environment["RUN_NETWORK"] == "1" {
            await fetchExample()
        }
    }
}
