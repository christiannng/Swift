import Foundation

let pizzaInInches: Int = 12
let slicePerPerson: Int = 5
var numberOfPeople: Int = 6

//-----------------------------Computed Properties-----------------------------
//Computed property - Getters - You must indicate with type is using
var numberOfSlices: Int {
    return pizzaInInches - 4
}
// -> numberOfSlices is the GET ONLY property.


//More completed way
var numberOFSlices2: Int  {
    get {
        return pizzaInInches - 4
    }
    
    set {
        print("numberOfSLices2 now has a new value which is \(newValue)")
    }
}

var numberOfPizza: Int {
    get {
        let numberOfPeopleFedPerPizza = numberOfSlices / slicePerPerson
        return numberOfPeople / numberOfPeopleFedPerPizza
    }
    
    set {
        let totalSlices = numberOfSlices * newValue
        numberOfPeople = totalSlices / slicePerPerson
    }
}

print(numberOfPizza)
//----------------------------------------------------------------------------------


//-----------------------------Observed Properties-----------------------------
var pizzaInInches3: Int = 10 {
    willSet {
        print(newValue)
    }
    
    didSet {
        print(oldValue)
        
        if pizzaInInches3 >= 18 {
            print("Invalid size specified, pizzaInInches set to 18.")
            pizzaInInches3 = 18
        }
    }
}

pizzaInInches = 8
