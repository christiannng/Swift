import Foundation

let pizzaInInches: Int = 12

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





