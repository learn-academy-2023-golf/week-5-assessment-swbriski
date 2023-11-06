// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

describe ("leetSpeak", () => {
    it ("takes in a string and returns a string with a coded message", () => {
        expect(leetSpeak(secretCodeWord1)).toEqual("L4ck4d41s1c4l")
        expect(leetSpeak(secretCodeWord2)).toEqual("G0bbl3dyg00k")
        expect(leetSpeak(secretCodeWord3)).toEqual("3cc3ntr1c")
    })
})


// b) Create the function that makes the test pass.

// Pseudo code:
// input: string
// output: modified string
// Convert the string into an array.
// For each letter in the array, evaluate whether the letter needs to be changed.
// Change designated letters to their appropriate values.
// Convert the modified array back into a string.

// With a for loop____________________________________
    // const leetSpeak = (string) => {
    //     let stringArray = string.split("")

    //     for (i = 0; i < stringArray.length; i++) {
    //         if (stringArray[i].toLowerCase() === "a") {
    //             stringArray[i] = "4"
    //         } else if (stringArray[i].toLowerCase() === "e") {
    //             stringArray[i] = "3"
    //         } else if (stringArray[i].toLowerCase() === "i") {
    //             stringArray[i] = "1"
    //         } else if (stringArray[i].toLowerCase() === "o") {
    //             stringArray[i] = "0"
    //         }
    //     }

    //     return stringArray.join("")
    // }
// End of for loop solution

//With a high order function___________________________
    const leetSpeak = (string) => {
        let stringArray = string.split("")

        stringArray = stringArray.map(letter => {
            if (letter.toLowerCase() === "a") {
                return "4"
            } else if (letter.toLowerCase() === "e") {
                return "3"
            } else if (letter.toLowerCase() === "i") {
                return "1"
            } else if (letter.toLowerCase() === 'o') {
                return "0"
            } else {
                return letter
            }
        })

        return stringArray.join("")
    }
// End of high order function solution

// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

// Added additional tests for the cards represented by letters
const hand5 = ['A', 'K', 'K', 'A', 'K']
// Expected output: true
const hand6 = [7, 'A', 'K', 7, 'K']
// Expected output: false
const hand7 = [6, 'Q', 'Q', 6, 6]
// Expected output: true

describe("fullHouse", () => {
    it ("takes in an array of 5 numbers and determines whether or not the array is a full house", () => {
        expect(fullHouse(hand1)).toEqual(true)
        expect(fullHouse(hand2)).toEqual(false)
        expect(fullHouse(hand3)).toEqual(false)
        expect(fullHouse(hand4)).toEqual(true)
        expect(fullHouse(hand5)).toEqual(true)
        expect(fullHouse(hand6)).toEqual(false)
        expect(fullHouse(hand7)).toEqual(true)
    })
})

// b) Create the function that makes the test pass.

// Pseudo code:
// input: Array
// output: Boolean

const fullHouse = (hand) => {
    // Create an object that tracks how many of each card value are in the hand.
    let cardValues = { '2': 0, '3': 0, '4': 0, '5': 0, '6': 0, '7': 0, '8': 0, '9': 0, '10': 0, A: 0, J: 0, Q: 0, K: 0 }

    // Create an array that converts the cards in the hand into strings - this will allow the appropriate key to be called in the next step.
    modifiedHand = hand.map(card => {
        card.toString
        return `${card}`
    })

    // For each card in the hand, increase the value of its associated key by one.
    modifiedHand.forEach(cardString => {
        cardValues[cardString] = cardValues[cardString] + 1
    })

    // Evaluate whether the modified object contains both a three of a kind and a pair.
    if (Object.values(cardValues).includes(3) && Object.values(cardValues).includes(2)) {
        return true
    } else {
        return false
    }
}